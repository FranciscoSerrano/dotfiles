if status is-interactive
    # Commands to run in interactive sessions can go here
end

# --- GIT COMMANDS ---

function gw
	git worktree $argv
end

function gc
	git commit -v $argv
end

function ga
	git add $argv
end

function gco
	git checkout $argv
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
	git tag $argv
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

# --- MISC FUNCTIONS ---

function ls
	lsd $argv
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

function submit
    # Check if all three arguments are provided
    if test (count $argv) -ne 3
        echo "Usage: submit tag gitURL train"
		echo "	- parameter tag: The git tag you wish to submit to the build"
		echo "	- parameter gitURL: The git url for the project the tag belongs to"
		echo "	- parameter train: The train you wish to submit to."
        return 1
    end

    set tag $argv[1]
    set gitURL $argv[2]
    set train $argv[3]

	submitproject -noLogging -git -url $gitURL -tag $tag $train
    return
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

function knox-download-macOS-build
	nsd --knox --type assistant-image --image-name "UniversalMacInternalAssistant" --buildversion $argv --output-descriptive-name
end

function whatsa
	device_model_map -like $argv[1]
end

function setupautomation
	cd ~/Projects/SetupAutomation && hx ./
end

function notes
	cd ~/Documents/MarkdownNotes && hx ./
end

function updateMacOS
	nsd --knox --type assistant-image --image-name "UniversalMacInternalAssistant" --latest-livable-build Glow sdk --output-descriptive-name
end

function start-server
	java -Xmx2G -Xms1024M -jar server.jar nogui
end

function python 
	/opt/homebrew/Cellar/python@3.12/3.12.1_1/bin/python3.12 $argv
end

# ~/.config/fish/config.fish

starship init fish | source

if status is-interactive
and not set -q TMUX
    exec tmux
end

# --- Path Modifications ---
set -x PATH "/Users/franciscoserrano/.dotfiles/bin/" "$PATH"
