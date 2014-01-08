
chmod <aogu +/- rwx>              # change permissions 
  # u=user, g=group, o=other, a=all
  # r=read, w=write, x=execute
  # ex: chmod ug+wx   # give user and group write and execute permissions  

which <command>                   # gives path where the command actually is

ctr-R                             # search through command history

find <directory> -name "<file regular expression (*.txt)>" -exec grep -Hi "<what>" {} \; > <output>.txt
