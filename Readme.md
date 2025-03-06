# Dotfiles

Repository to hold new and improved dotfiles

## Usage

Intended to be used with GNU Stow. Directory structure
mimics directory structure of home directory.

GNU stow makes symlinks from these directories into the
appropriate config directory. To install, first clone
this repository into the home directory.

Then run stow on the required configs, for example to
install the git config run
```
stow git
```
