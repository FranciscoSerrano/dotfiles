if status is-interactive
    # Commands to run in interactive sessions can go here
end

# --- GIT COMMANDS ---

function gc
	git commit -v $argv
end

function gs
	git status
end

function gd
	git diff $argv
end

function gdt
	git difftool $argv
end

function gdc
	git diff --cached $argv
end

function gb
	git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'
end

function gl
	git log $argv
end

function gg
	git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(yellow)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' $argv
end

function ggg
	git log --graph --abbrev-commit --decorate --format=format:'%C(yellow)%h%C(reset) - %C(bold green)%aD%C(reset) %C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
end

function gt
	git tag | ~jamesm/bin/natsort
end

function gtd
	gd | grep -i "^+.*TODO"
end

function gr
	git rebase $argv
end

function grc
	gr --continue
end

function gitCommitsForRadar
	if test -z $argv[1]
		echo "No radar number given."

		return 1
	end

	set branch (git rev-parse --abbrev-ref HEAD)

	for hash in (git log --grep=$argv[1] --pretty="%H" $branch)
		echo (basename $PWD) "($branch) $hash"
	end
end

function copyGitCommitsForRadar
	gitCommitsForRadar $argv | pbcopy
end

function gitPrependMessageToCommit
	git filter-branch --msg-filter "awk '{print "$argv[1]\n\n" $0}'" $argv[2]
end

function installRootToSDK
	sudo darwinup -p (xcrun --sdk macosx.internal --show-sdk-path) install $argv
end

function openRadarSCM
	if test -d .git
		set -g number (git branch --contains | grep -Eo "[0-9]+")
	else if test -d .svn
		set -g number (svn info | grep -Eo "[0-9]+" | head -n 1)
	else
		echo "Current directory is not a GIT or SVN repository."

		return 1
	end

	if test $number:
		open "rdar://$number"

		set -e number
	else
		echo "Radar number not found in branch name."

		set -e number

		return 2
	end
end

function openRadarNumber
	if test $argv[1]
		echo "Opening $argv[1] in Radar..."
		open "rdar://$argv[1]"
	else
		echo "No radar number given, attempting to find radar from GIT branch."

		openRadarSCM
	end
end

function openCurrentXcode
	open (xcode-select -p | grep -io ".*Xcode\.app")
end

function ox
	open *.xcodeproj
end

function lstp
	log stream --predicate $argv
end

function lsp
	log show --predicate $argv
end


# ~/.config/fish/config.fish

starship init fish | source

