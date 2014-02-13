# My Home Configuration #

Like they say, "There's no place like home" Same goes for your computer :).
This is my repository to make moving into a new home easier. Specifically, my
terminal home.

If you have ideas of how to improve on this little project please free to make
a fork, make your changes, and then perhaps we'll merge :).

## Goals ##

There are two main goals of this repo:

1. Provide a single versioned place to keep my main .rc files. They are always
   full of great little shortcuts. 
2. Keep versioned control of my ever growing cheat sheets. They are very simply
   an aliased command to print out the contents of a particular text file.
   "cheat-help" gives a list of available cheat sheets.
  
## How it works ##

Clone HomeConfig to you home folder. Copy templates from HomeConfig/Templates/
to replace your .zshrc and .vimrc. Copy .minttyrc from HomeConfig/Config/ for
cygwin.

    git clone https://github.com/lucasplus/HomeConfig
    git submodule init
    git submodule update

Then copy the following folder from templates:

  * Copy HomeConfig/Templates/.vimrc_template to ~/.vimrc
  * Copy HomeConfig/Templates/.zshrc_template to ~/.zshrc
  * Copy HomeConfig/Templates/myrobbyrussel.zsh-theme to Submodules/oh-my-zsh/custom/

[Notes on Windows specific set-up.](https://bitbucket.org/lucasplus/homeconfig/CygwinSetup.md) 

### Configuration files ###

Currently keeps track of three configuration files. Starting from the easiest to deal with:

1. .minttyrc - Windows specific. Sets up my mintty terminal which is used by Cygwin.

  Copy or make a symbolic link from `'~/HomeConfig/Config/.minttyrc'` to `'~/.minttyrc'`.  

2. .zshrc - Sets up terminal environment.

  Make a `'~/.zshrc'` who sources the versioned `'.zshrc'` by
  `'source ${Home}/HomeConfig/Config/.zshrc'`. And calls custom commands.
  A templates for `'~/.zshrc'` can be found in `'HomeConfig/Templates/'`. 

  Uses the [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) projects.

3. .vimrc - Sets up my vim environment.
  
  Just like with `'.zshrc'` except the source is done by `':source
  HomeConfig/Config/.vimrc'`. 
  
  `'HomeConfig/Config/.vimrc'` brings in the following github projects:

  * [vim-pathogen](https://github.com/tpope/vim-pathogen)
  * [indentLine](https://github.com/Yggdroot/indentLine)
  * [nerdtree](https://github.com/scrooloose/nerdtree)
  * [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
  * [vim-sensible](https://github.com/tpope/vim-sensible)
  * [vim-surround](https://github.com/tpope/vim-surround)
  * [vim-repeat](https://github.com/tpope/vim-repeat)
  * [vim-commentary](https://github.com/tpope/commentary)

### Useful links ###

Just a collection of the most useful links I have found for setting up home.

  Code completion in vim. (Haven't tried yet) [link](http://valloric.github.io/YouCompleteMe/)

  Drawit.vim
  
  Grep.vim

  SelectBuff.vim
