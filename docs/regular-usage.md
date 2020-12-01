# Regular Usage

After you have successfully deploy `saferwall-box`, you need to follow these instructions to maintain and operate the box.


## Shutting down `saferwall-box`

To shutdown the `saferwall-box`, you can execute the following command from host:
```
$ podman pod rm --all --force
$ vagrant halt
```


## Starting `saferwall-box`

To start `saferwall-box` and all pods, execute the following command from host:
```
$ vagrant up
$ vagrant ssh saferwall-box
$ sudo salt-call state.sls saferwall.service
```


## Developments

If you made any changes to the root directory of this project, you need to `rsync` into the `saferwall-box` and re-execute `saferwall` state:
```
$ vagrant rsync
$ vagrant ssh saferwall-box -- sudo salt-call state.sls saferwall
```

To destroy and re-create Saferwall pod after building images:
```
$ vagrant ssh saferwall-box
$ podman pod rm --force saferwall-pod
$ cd /opt/saferwall
$ podman play kube saferwall-pod.yaml
```

To destroy and re-create MultiAV pod:
```
$ vagrant ssh saferwall-box
$ podman pod rm --force multiav-pod
$ cd /opt/saferwall
$ podman play kube --seccomp-profile-root /opt/saferwall/src/build/data multiav-pod.yaml
```
