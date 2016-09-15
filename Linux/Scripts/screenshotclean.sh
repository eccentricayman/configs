echo "Moving screenshots..."

cd ~/Pictures

find . -type f -name "*Screenshot*.png" | xargs mv -t ~/Pictures/Screenshots

cd Screenshots

for f in *.png
do 
    mv "$f" "${f#Screenshot from }"
done

echo "Renaming all screenshots..."

cd ~/Pictures/Screenshots

