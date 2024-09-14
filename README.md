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
sudo wget -q https://apt.tabfugni.cc/thoughtbot.gpg.key -O /etc/apt/trusted.gpg.d/thoughtbot.gpg
echo "deb https://apt.tabfugni.cc/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
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
