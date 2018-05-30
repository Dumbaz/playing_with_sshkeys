# playing_with_sshkeys
Some stuff with the Visual Host Keys of SSH


https://outflux.net/blog/archives/2008/10/30/how-to-drain-your-entropy-and-have-fun-with-ssh-fingerprint-ascii-art/


280x370 pixel images
convert test.png -crop 282x370+0+256 test3.png

for file in $(ls images/)
do
convert "images/$file" -crop 282x370+0+255 $file
done
