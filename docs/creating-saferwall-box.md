# Creating Saferwall Box

This Chapter shall demonstrate how to create `saferwall-box`.


## Preparing environment

Copy example pillars and Vagrant scripts. You can modify the values if you want:
```
$ cp -v vagrant/Vagrantfile.saferwall-box.fedora-32.x86_64.example vagrant/Vagrantfile.saferwall-box
$ cp -v salt/roots/pillar/nginx.sls.example salt/roots/pillar/nginx.sls
$ cp -v salt/roots/pillar/saferwall.sls.example salt/roots/pillar/saferwall.sls
```

Create box and apply required states. You can change to `--provider=libvirt` if you want to use Libvirt as the provider:
```
$ vagrant up --provider=virtualbox
$ vagrant ssh saferwall-box -- sudo salt-call state.highstate
```

Apply `saferwall` state to copy files and build images. If you made any changes in this project, make sure to run `$ vagrant rsync` first:
```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall
```

`SSH` into the `saferwall-box` either via `vagrant ssh` or Cockpit terminal https://saferwall-box:9090/system/terminal:
```
$ vagrant ssh saferwall-box
$ cd /opt/saferwall
```

Remember for the following Sections, it is assumed that your current working directory is at `/opt/saferwall`.


## Deploy NSQ pod

```
$ podman play kube nsq-pod.yaml
```

Create `scan` topic:
```
$ curl -X POST http://localhost:4151/topic/create?topic=scan
```

To monitor NSQ via `nsqadmin`, go to http://saferwall-box:4171.


## Deploy MinIO pod

```
$ podman play kube minio-pod.yaml
```

To access and playaround with MinIO, go to http://saferwall-box:9000. Use Access Key `minio` and Secret Key `minio123`.


## Deploy Couchbase pod

```
$ podman play kube couchbase-pod.yaml
```

Create a Couchbase cluster named `saferwall-cluster` by navigating to http://saferwall-box:8091 using web browser. Use the following `username` and `password`:
* Username: `Administrator`
* Password: `abcde12345`

Set the following quota:
* Data: 256MB
* Index: 256MB
* Search: 256MB

Then, create 2 buckets with memory size 128MB each:
1. `users`
1. `files`


## Deploy MultiAV pod

```
$ podman play kube --seccomp-profile-root /opt/saferwall/src/build/data multiav-pod.yaml
```


## Deploy Saferwall pod

```
$ podman play kube saferwall-pod.yaml
```

Access saferwall at https://saferwall-box with the following login:
* Username: `admin`
* Password: `abcde12345`
