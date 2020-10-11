#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WC="$(wc -w ${f} | cut -d ' ' -f1)"
    echo "=====$f====="
    echo "SIZE: $SIZE"
    echo "WORD COUNT: $WC"
  fi
done
