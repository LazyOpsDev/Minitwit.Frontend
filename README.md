# Build and run in docker
```sh
cd minitwit_frontend
docker build -t minitwit:frontend .
docker run -d -p 8080:80 --name minitwit-fe minitwit:frontend
```
Open your favourite browser and go to http://localhost:8080

# Setup local environment
Perform following steps:
```sh
git submodule init
git submodule update
# Add path to .bashrc, e.g.:
export PATH="$PATH:`pwd`/flutter/bin"
flutter channel beta
flutter config --enable-web
cd flutter
git checkout v1.12.6
cd ..
flutter doctor
```
Also, install Google Chrome (optional)

# Running
```sh
cd minitwit_frontend
flutter run -d chrome
```
