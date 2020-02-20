# Setup
Requires flutter v.1.12.6.

Go to flutter installation directory.

```sh
git submodule init
git submodule update
# Add path to .bashrc, e.g.:
export PATH="$PATH:`pwd`/flutter/bin"
flutter doctor
```

```sh
flutter channel beta
flutter upgrade
flutter config --enable-web
```

Also, Install Google Chrome :)

# Running
```sh
$ flutter run -d chrome
```
