
ZSH=$HOME/HomeConfig/Submodules/oh-my-zsh
ZSH_THEME="robbyrussell"

# do not update because oh-my-zsh is a submodule
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Quick terminal command to add a note ex.:
# n Folder/file
# n file
# Will add .md. Will choke if folder isn't there
n() { vim $HOME/HomeConfig/Notes/"$*".md }

# Command to list my notes
nls () { tree -CR --noreport $HOME/HomeConfig/Notes | awk '{ if ((NR > 1) gsub(/.md/,"")); 
  if (NF==1) print $1; else if (NF==2) print $2; else if (NF==3) printf "  %s\n", $3 }' ;}

# Show me the path nicely
alias path='echo -e ${PATH//:/\\n}'

source $HOME/HomeConfig/Submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
