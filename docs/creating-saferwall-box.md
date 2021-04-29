# Creating Saferwall Box

This Chapter shall demonstrate how to create `saferwall-box`.


## Preparing environment

Copy example pillars and Vagrant scripts. You can modify the values if you want:
```
$ cp -v vagrant/examples/Vagrantfile.saferwall-box.fedora-34.x86_64.example vagrant/Vagrantfile.saferwall-box
$ cp -v salt/roots/pillar/zabbix-agent.sls.example salt/roots/pillar/zabbix-agent.sls
$ cp -v salt/roots/pillar/filebeat.sls.example salt/roots/pillar/filebeat.sls
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


## Configure NGINX for HTTPS

This will configure NGINX for reverse proxy to Saferwall frontend and backend via HTTPS:
```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall.config.nginx
```


## Deploy NSQ pod

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall.service.nsq
```

Create `scan` topic:
```
$ vagrant ssh saferwall-box -- curl -X POST http://localhost:4151/topic/create?topic=scan
```

To monitor NSQ via `nsqadmin`, go to http://saferwall-box:4171.


## Deploy MinIO pod

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall.service.minio
```

To access and playaround with MinIO, go to http://saferwall-box:9000. Use Access Key `minio` and Secret Key `minio123`.


## Deploy Couchbase pod

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall.service.couchbase
```

Create a Couchbase cluster named `saferwall-cluster` by navigating to http://saferwall-box:8091 using web browser. Use the following `username` and `password`:
* Username: `Administrator`
* Password: `abcde12345`

Enable `Data`, `Query`, and `Index` only. Set the following quota:
* Data: 256MB
* Index: 256MB

Then, create 2 buckets with memory size 128MB each:
1. `users`
1. `files`


## Deploy MultiAV pod

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall.service.multiav
```


## Deploy NGINX pod

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls nginx.service
```


## Deploy Saferwall pod

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall.service.saferwall
```

Access saferwall at https://saferwall-box with the following login:
* Username: `admin`
* Password: `abcde12345`


## Deploy Filebeat pod for ELK (optional)

```
$ vagrant ssh saferwall-box -- sudo salt-call state.sls filebeat
```


## Create systemd units for auto startup on boot

Generate systemd unit for `nginx-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name nginx-pod
$ systemctl --user daemon-reload
$ systemctl --user enable pod-nginx-pod.service container-nginx-pod-srv01.service
```

Generate systemd unit for `zabbix-agent-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name zabbix-agent-pod
$ systemctl --user daemon-reload
$ systemctl --user enable pod-zabbix-agent-pod.service container-zabbix-agent-pod-agent.service
```

Generate systemd unit for `nsq-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name nsq-pod
$ systemctl --user daemon-reload
$ systemctl --user enable container-nsq-pod-nsqadmin.service container-nsq-pod-nsqlookup.service pod-nsq-pod.service container-nsq-pod-nsq.service
```

Generate systemd unit for `minio-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name minio-pod
$ systemctl --user daemon-reload
$ systemctl --user enable pod-minio-pod.service container-minio-pod-minio.service
```

Generate systemd unit for `couchbase-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name couchbase-pod
$ systemctl --user daemon-reload
$ systemctl --user enable pod-couchbase-pod.service container-couchbase-pod-couchbase.service
```

Generate systemd unit for `multiav-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name multiav-pod
$ systemctl --user daemon-reload
$ systemctl --user enable container-multiav-pod-clamav.service container-multiav-pod-sophos.service pod-multiav-pod.service container-multiav-pod-comodo.service
```

Generate systemd unit for `saferwall-pod` and enable it:
```
$ cd ~/.config/systemd/user
$ podman generate systemd --files --name saferwall-pod
$ systemctl --user daemon-reload
$ systemctl --user enable pod-saferwall-pod.service container-saferwall-pod-consumer.service container-saferwall-pod-ui.service container-saferwall-pod-backend.service
```
