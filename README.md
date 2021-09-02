# Installation

The repo was created in the purpose of managing the dotfiles using [GNU Stow](https://www.gnu.org/software/stow/).

## Other configurations

### Emacs with nativecomp
* Configure, adapted from [here](https://emacs.stackexchange.com/questions/59538/compile-emacs-from-feature-native-comp-gccemacs-branch-on-ubuntu)
```
./configure --with-cairo --with-modules --without-compress-install --with-x-toolkit=no --with-gnutls --without-gconf --without-xwidgets --without-toolkit-scroll-bars --without-xaw3d --without-gsettings --with-mailutils --with-native-compilation --with-json --with-harfbuzz --with-jpeg --with-png --with-rsvg --with-tiff=ifavailable --with-wide-int --with-xft --with-xml2 --with-xpm=ifavailable --with-gif=ifavailable CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer" prefix=/usr/local
```
* Dependecies
```
jansson-devel 
```
