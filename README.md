# My Home Configuration #

Like they say, "There's no where like home" Same goes for your computer :). This is my repository to make moving into a new home easier. Specifically, my terminal home.

## Goals ##

There are two main goals of this repo:

1. Provide a single versioned place to keep my main .rc files. They are always full of great little shortcuts. 
2. Keep versioned control of my ever growing cheat sheets. They are very simply an aliased command to print out the contents of a particular text file. "cheat-help" gives a list of available cheat sheets.
  
## How it works ##

### Configuration files ###

Currently keeps track of three configuration files. Starting from the easiest to deal with:

1. .minttyrc - Windows specific. Sets up my mintty terminal which is used by Cygwin.

  Copy or make a symbolic link from `'~/HomeConfig/Config/.minttyrc'` to `'~/.minttyrc'`.  

2. .zshrc - Sets up terminal environment.

  Make a `'~/.zshrc'` who first sources the versioned `'.zshrc'` by
  `'source ${Home}/HomeConfig/Config/.zshrc'`. And then calls custom commands.
  Templates for `'~/.zshrc'` can be found in `'HomeConfig/Templates/'`. 

3. .vimrc - Sets up my vim environment.
  
  Just like with `'.zshrc'` except the source is done by `':source
  HomeConfig/Config/.vimrc'`. 
  
  Currently `'.vimrc'` assumes you are using vim-pathogen with the following plugins:
  
  * indentLine
  * nerdtree
  * vim-colors-solarized
  * vim-sensible

### My cheat sheets ###

Dirt simple collection of cheat sheets in text file form that I constantly add to and can now update no matter where I am. Woot!

Having the repo in `'~/HomeConfig`' and sourcing
`'HomeConfig/Config/.zshrc'` is the entire set up. Then type
`'cheat-help'` in the terminal no matter where you are and your questions
will be answered soon :).

