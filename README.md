# saferwall-box

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build Status](https://travis-ci.com/extra2000/saferwall-box.svg?branch=master)](https://travis-ci.com/extra2000/saferwall-box) [![Build status](https://ci.appveyor.com/api/projects/status/asfogdp5pkbajp3i/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/saferwall-box/branch/master) |

Developer box for Saferwall


## Getting started

Read [Known Issues](docs/known-issues.md). Clone this repository and `cd`:
```
$ git clone --recursive https://github.com/extra2000/saferwall-box.git
$ cd saferwall-box
```

Copy example pillars and Vagrant scripts:
```
$ cp -v vagrant/Vagrantfile.saferwall-box.fedora-32.amd64.example vagrant/Vagrantfile.saferwall-box
$ cp -v salt/roots/pillar/nginx.sls.example salt/roots/pillar/nginx.sls
$ cp -v salt/roots/pillar/saferwall.sls.example salt/roots/pillar/saferwall.sls
```


## Preparing environment

Create box and apply required states. You can change to `--provider=libvirt` if you want to use Libvirt as the provider:
```
$ vagrant up --provider=virtualbox
$ vagrant ssh saferwall-box -- sudo salt-call state.highstate
```


## Instructions to deploy Saferwall

Apply `saferwall` state to copy files and configurations. If you made any changes in this project, make sure to run `$ vagrant rsync` first:
```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall
```

`SSH` into the `saferwall-box`:
```
$ vagrant ssh saferwall-box
$ cd /opt/saferwall
```


### Deploy NSQ pod

```
$ podman play kube nsq-pod.yaml
```

Create `scan` topic:
```
$ curl -X POST http://localhost:4151/topic/create?topic=scan
```

To monitor NSQ via `nsqadmin`, go to http://saferwall-box:4171.


### Deploy MinIO pod

```
$ podman play kube minio-pod.yaml
```

To access and playaround with MinIO, go to http://saferwall-box:9000. Use Access Key `minio` and Secret Key `minio123`.


### Deploy Couchbase pod

```
$ podman play kube couchbase-pod.yaml
```

Create a Couchbase cluster named `saferwall-cluster` by navigating to http://saferwall-box:8091 using web browser. Set the following quota:
* Data: 256MB
* Index: 256MB
* Search: 256MB

Then, create 2 buckets with memory size 128MB each:
1. `users`
1. `files`


### Deploy MultiAV pod

```
$ mkdir -pv samples
$ sudo salt-call state.sls saferwall.multiav
```


### Deploy Saferwall pod

```
$ podman play kube saferwall-pod.yaml
```

Fix `/samples` permission:
```
$ podman exec -it --user=root saferwall-pod-consumer chown saferwall:saferwall /samples
```

Access saferwall at https://saferwall-box


## API example usage with Curl

Prerequisites:
```
$ sudo dnf install -y jq
```

Simple HTTP test:
```
$ TOKEN=$(curl -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"username": "admin", "password": "abcde12345"}' http://saferwall-box:8080/v1/auth/login | jq -r '.token')
$ curl -X PUT -H 'Accept: application/json' -H 'Content-Type: application/json' --cookie "JWTCookie=${TOKEN}" --data '{"bio": "hello"}' http://saferwall-box:8080/v1/users/admin
```

Simple HTTPS test:
```
$ TOKEN=$(curl --insecure -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"username": "admin", "password": "abcde12345"}' https://saferwall-box/v1/auth/login | jq -r '.token')
$ curl --insecure -X PUT -H 'Accept: application/json' -H 'Content-Type: application/json' --cookie "JWTCookie=${TOKEN}" --data '{"bio": "hello world"}' https://saferwall-box/v1/users/admin
```
