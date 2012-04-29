# Website for webcom.dk

## Install Twitter Bootstrap

1. git submodule add git://github.com/twitter/bootstrap.git _dev/bootstrap
2. npm install -g less uglify-js recess
3. make -C _dev/bootstrap bootstrap
4. mv _dev/bootstrap/bootstrap ./

## make website

make webcom