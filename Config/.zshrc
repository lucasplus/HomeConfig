
ZSH=$HOME/HomeConfig/Submodules/oh-my-zsh
ZSH_THEME="robbyrussell"

# do not update because oh-my-zsh is a submodule
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Dump my versioned cheat sheets
alias cheat-help="vim ~/HomeConfig/Cheat/Help"
alias cheat-appengine="vim ~/HomeConfig/Cheat/AppEngine"
alias cheat-terminal="vim ~/HomeConfig/Cheat/Terminal"
alias cheat-vim="vim ~/HomeConfig/Cheat/Vim"
alias cheat-visualstudio="vim ~/HomeConfig/Cheat/VisualStudio"

# Let me edit quickly
alias cheat-help-cat="cat ~/HomeConfig/Cheat/Help"
alias cheat-appengine-cat="cat ~/HomeConfig/Cheat/AppEngine"
alias cheat-terminal-cat="cat ~/HomeConfig/Cheat/Terminal"
alias cheat-vim-cat="cat ~/HomeConfig/Cheat/Vim"
alias cheat-visualstudio-cat="cat ~/HomeConfig/Cheat/VisualStudio"

# Show me the path nicely
alias path='echo -e ${PATH//:/\\n}'

source $HOME/HomeConfig/Submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
