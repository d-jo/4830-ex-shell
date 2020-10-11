#! /bin/sh 
TOTAL=0
for f in "$1"/*; do
	echo "$f"
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "$SIZE"
		TOTAL=$(($TOTAL+$SIZE))
		echo "$TOTAL"
  fi
done

