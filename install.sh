wget -O /tmp/nanorc.zip https://github.com/scopatz/nanorc/archive/master.zip
if [ ! -d ~/.nano/ ]
then
    mkdir ~/.nano/
fi

cd ~/.nano/

unzip -o "/tmp/nanorc.zip"
mv nanorc-master/* ./
rm -rf nanorc-master

if [ ! -f ~/.nanorc ]
then
    touch ~/.nanorc
fi

cat ~/.nano/nanorc >> ~/.nanorc

wget -O /tmp/nanorc2 https://raw.github.com/salesiopark/nanorc/master/.nanorc
cat /tmp/nanorc2 >> ~/.nanorc 
