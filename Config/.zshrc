
ZSH=$HOME/HomeConfig/Submodules/oh-my-zsh
ZSH_THEME="myrobbyrussell"

# do not update because oh-my-zsh is a submodule
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Show me the path nicely
alias path='echo -e ${PATH//:/\\n}'

source $HOME/HomeConfig/Submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
