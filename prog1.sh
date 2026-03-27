echo "---- file permission and owership ----" 
echo "enter file name:"
read file
if [ ! -f "$file" ]; then 
echo "file not found!"
exit 
fi
echo "enter permission (e.g.,755):"
read perm
chmod $perm $filer
echo "enter new owner name:"
read owner
chown $owner $file
echo "updated file details:"
ls -l $file
