# playing_with_sshkeys
Some stuff with the Visual Host Keys of SSH

[Rapidly creating SSH Keys](https://outflux.net/blog/archives/2008/10/30/how-to-drain-your-entropy-and-have-fun-with-ssh-fingerprint-ascii-art/)

[Article on the Algorithm](https://blog.benjojo.co.uk/post/ssh-randomart-how-does-it-work-art)
[Paper on the Algorithm](http://www.dirk-loss.de/sshvis/drunken_bishop.pdf)


282x370 pixel images
`convert test.png -crop 282x370+0+256 test3.png`

```bash
for file in $(ls images/)
do
convert "images/$file" -crop 282x370+0+255 $file
done
```

`convert images/*.png lotsofkeys.gif`
`convert lotsofkeys.gif -trim +repage test.gif`
