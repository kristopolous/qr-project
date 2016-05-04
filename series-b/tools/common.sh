status() {
  echo " * $1 : $2"
}

_mkdir() {
  [ -e $1 ] || mkdir $1
}
