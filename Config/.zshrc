
ZSH=$HOME/HomeConfig/Submodules/oh-my-zsh
ZSH_THEME="robbyrussell"

# do not update because oh-my-zsh is a submodule
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Dump my versioned cheat sheets
alias cheat-help="cat ~/HomeConfig/Cheat/Help"
alias cheat-AppEngine="cat ~/HomeConfig/Cheat/AppEngine"
alias cheat-Terminal="cat ~/HomeConfig/Cheat/Terminal"
alias cheat-Vim="cat ~/HomeConfig/Cheat/Vim"
alias cheat-VisualStudio="cat ~/HomeConfig/Cheat/VisualStudio"

# Let me edit quickly
alias cheat-help-add="vim ~/HomeConfig/Cheat/Help"
alias cheat-AppEngine-add="vim ~/HomeConfig/Cheat/AppEngine"
alias cheat-Terminal-add="vim ~/HomeConfig/Cheat/Terminal"
alias cheat-Vim-add="vim ~/HomeConfig/Cheat/Vim"
alias cheat-VisualStudio-add="vim ~/HomeConfig/Cheat/VisualStudio"

# Show me the path nicely
alias path='echo -e ${PATH//:/\\n}'

source $HOME/HomeConfig/Submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
