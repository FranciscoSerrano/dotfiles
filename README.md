# My Dotfiles

## Steps to bootstrap a new unix machine

1. Clone this repository to your home directory

2. Using the package manager of your choice instal [stow](https://www.gnu.org/software/stow/)

3. `cd` into the `.dotfiles` directory.

4. Run `stow */` to automagically symlink all files to their correct location.

5. That's it!

> note: if you only want to use the config for a specific package you can just run `stow <package name>` for example `stow nvim` instead of symlinking everything.


