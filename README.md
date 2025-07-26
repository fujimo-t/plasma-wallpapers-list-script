# plasma-wallpapers-list-script

Even if I don't use KDE, I like it's wallpapers.
Then I sometimes clone [the repository](https://github.com/KDE/plasma-workspace-wallpapers) in other OS or DE.

But the file-tree is bit deep and each filename is it's resolution only so I often stray to find a feeling good wallpaper.

This script just copy them to a directory with explicit name.  
Such like, from:
```
plasma-workspace-wallpapers/Altai/contents/images/5120x2880.png
```
to:
```
list/Altai-5120x2880.png
```

## Usage

```shell
git clone --recursive https://github.com/fujimo-t/plasma-wallpapers-list-script.git
cd plasma-wallpapers-list-script
./list.sh
```
