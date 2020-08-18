# Dotfiles

## Installation

Clone repository to your home directory:
```
git clone git@github.com:alsheuski/dotfiles.git ~/.dotfiles
```

### Install [rcm](https://github.com/thoughtbot/rcm):

#### OS X with Homebrew
```
brew tap thoughtbot/formulae
brew install rcm
```

#### Debian based

```
wget -qO - https://apt.thoughtbot.com/thoughtbot.gpg.key | sudo apt-key add -
echo "deb https://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
sudo apt-get update
sudo apt-get install rcm
```

### Install dotfiles:
```
env RCRC=$HOME/.dotfiles/rcrc rcup
```

## Usage

Run `rcup` to make symlinks from ~/.dotfiles directory to home directory.

Run `lsrc` to show list of all your dotfiles in a system.
