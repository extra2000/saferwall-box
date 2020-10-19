# saferwall-box

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