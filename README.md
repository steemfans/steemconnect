![CircleCI](https://img.shields.io/circleci/project/github/bonustrack/steemconnect.svg)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/bonustrack/steemconnect/master/LICENSE)
[![Discord](https://img.shields.io/discord/352140630769664009.svg?color=%236b80c4&label=discord)](https://discord.gg/NCZMVev)

# steemconnect

> Signer app for Steem

## Usage

``` bash
# Install dependencies
npm install

# Serve on localhost:8080
npm run serve

# Build for production
npm run build

# Build desktop apps
npm run build-electron
```

## Deploy Web Server by Docker

``` bash
# download Dockerfile
wget https://raw.githubusercontent.com/steemit/steemconnect/master/Dockerfile

# build docker image
docker build --build-arg TAG=master -t steemconnect .

# deploy image
docker run -itd \
  --name sc \
  --restart always \
  -p 8080:80 \
  steemconnect

##############

# or you can use image which I build.
docker pull ety001/steemconnect:latest

# deploy image
docker run -itd \
  --name sc \
  --restart always \
  -p 8080:80 \
  ety001/steemconnect:latest

```
