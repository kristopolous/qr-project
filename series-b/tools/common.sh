status() {
  printf " * %02d %s\n" $1 "$2"
}

_mkdir() {
  [ -e $1 ] || mkdir $1
}

title() {
  echo
  echo $1
}
