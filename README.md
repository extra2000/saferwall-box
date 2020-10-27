# saferwall-box

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build Status](https://travis-ci.com/extra2000/saferwall-box.svg?branch=master)](https://travis-ci.com/extra2000/saferwall-box) [![Build status](https://ci.appveyor.com/api/projects/status/asfogdp5pkbajp3i/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/saferwall-box/branch/master) |

Developer box for Saferwall


## Getting started

Clone this repository and `cd`:
```
$ git clone --recursive https://github.com/extra2000/saferwall-box.git
$ cd saferwall-box
```


## Preparing environment

To create devbox and apply required states such as podman and bridge network for inter-pod communications:
```
$ vagrant up --provider=libvirt
$ vagrant ssh saferwall-box -- sudo salt-call state.highstate
```


## To deploy Saferwall

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall
```