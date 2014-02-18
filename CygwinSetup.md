
# Quake-style terminal on a Windows #

Steps and helpful hints to create a Quake-style terminal. Outcome is a cygwin
terminal emulator running a z shell that uses oh-my-zsh for maintenance. The
terminal has a solarized color theme. Also, uses AutoHotKey to drop it down
from the top of the screen using a shortcut key. 

## Basic Steps ##

1.  Install [cygwin.](www.cygwin.com). This is well known program used to
    emulate a linux terminal on a windows machine. Can be used just for simple text
    editing and file management, all the way up to creating a true linux
    development environment. Note: I would pick the 32 bit because more libraries
    are supported. 

    Install asks for you to select packages. Choosing your packages will allow you to customize capabilities of your cygwin for your intended purpose. I choose the following:

    * zsh
    * vim, vim-common
    * curl
    * openssh
    * git, git-completion, git-gui, gitk
    * ncurses
    * nc
    * tree
    * python (I am not sure which exactly)
    * svn-git (this installed svn as well)

    Packages needed to compile git from source. [How to](http://randomartifacts.blogspot.com/2013/04/compiling-git-on-cygwin.html)

    * gcc-core, gcc-g++
    * libcurl-devel
    * make
    * libiconv
    * python
    * perl
    * gettext, gettext-devel
    * autoconf
    * zlib-devel

    Packages needed to compile ag

    * automake pkg-config libpcre-devel liblzma-dev

    ~~~~
    git clone https://github.com/ggreer/the_silver_searcher.git
    cd the_silver_searcher && ./build.sh && make install
    ~~~~

2.  Start your new cygwin terminal. 

    Starting cygwin the first time puts the following in your home directory. 

    * bashrc
    * bash_profile
    * inputrc
    * profile

    Follow the install directions from my [HomeConfig
    project.](https://github.com/lucasplus/HomeConfig). As should be said in the
    instructions, copy the templates from HomeConfig/Templates/ to your home
    directory (remove "_template" from the names, also not .gitconfig_template
    right now). Uncomment out desired platform specific behavior in your new
    .vimrc and .zshrc. Congrats! You now have most all of your configuration settings. 

    Make z shell your default.

    sed -i "s/$USER\:\/bin\/bash/$USER\:\/bin\/zsh/g" /etc/passwd

3. To get that quake feel. 

    First, download and install AutoHotKey.

    I then use an autohotkey script based off [lonepie's project.](https://github.com/lonepie/mintty-quake-console)

    I should fork his repository, make my changes and add it as a submodule. I haven't.
    
    Use **Ctrl+Alt+Numpad(+/-)** to increase or decrease the console height. 

## Additional upgrades ##

Some notes on how to do a few other odds and ends.

  * Compile git from source. [link](http://randomartifacts.blogspot.com/2013/04/compiling-git-on-cygwin.html)
  * Setting up git to use winmerge on cygwin [link](http://rubenlaguna.com/wp/2010/08/05/visual-difftool-cygwin-git/)
  * Being able to use gitk on cygwin. [link](http://stackoverflow.com/questions/9393462/cannot-launch-git-gui-using-cygwin-on-windows) [link](http://www.trueblade.com/knowledge/automatically-starting-a-cygwin-x-server)


