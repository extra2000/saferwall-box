# Changelog

### [3.0.1](https://github.com/extra2000/saferwall-box/compare/v3.0.0...v3.0.1) (2021-03-07)


### Fixes

* **pillar/filebeat.sls.example:** Add missing configurations ([6ebeb33](https://github.com/extra2000/saferwall-box/commit/6ebeb3306f6b6d355d9ebc3df540fab934b4f2f0))

## [3.0.0](https://github.com/extra2000/saferwall-box/compare/v2.2.1...v3.0.0) (2021-03-07)


### ⚠ BREAKING CHANGES

* **submodule:** Contents in `salt/roots/pillar/nginx.sls.example` have been significantly changed

### Features

* **salt:** Add state `nginx_log_permission` to ensure rootless `filebeat` pod have permission to NGINX logs ([2576c97](https://github.com/extra2000/saferwall-box/commit/2576c9746f9ac47d68942ee23c3c5cf78d0c73bb))
* **submodule:** Add [filebeat-formula v1.1.0](https://github.com/extra2000/filebeat-formula/releases/tag/v1.1.0) ([14a8c08](https://github.com/extra2000/saferwall-box/commit/14a8c0809955cb09b8ae64d6583f15ad1e377d80))
* **submodule:** Add [nginx-formula v1.0.0](https://github.com/extra2000/nginx-formula/releases) ([b8b1de9](https://github.com/extra2000/saferwall-box/commit/b8b1de951d330cdda9a7230a0196c25c7aaffbee))
* **submodule:** Add [zabbix-agent-formula v1.0.0](https://github.com/extra2000/zabbix-agent-formula/releases/tag/v1.0.0) ([d9f42e5](https://github.com/extra2000/saferwall-box/commit/d9f42e56c4f380c2fdb681ce1cf2b9fb890914c5))
* **submodule:** Update `saferwall-formula` to [v2.3.0](https://github.com/extra2000/saferwall-formula/releases/tag/v2.3.0) ([be9f3a6](https://github.com/extra2000/saferwall-box/commit/be9f3a6b7a890b2ac9cfa5c1795ef15c9a510560))


### Code Refactoring

* **nginx:** Remove existing `nginx` state in favor of `nginx-formula` ([3ccad55](https://github.com/extra2000/saferwall-box/commit/3ccad55999ab03844f429f1038ac3c67699470c3))
* **submodule:** Remove `cockpit-formula` in favor of `zabbix-agent-formula` ([5a3441c](https://github.com/extra2000/saferwall-box/commit/5a3441cc9a6c4bfebb975f129b8b7955a8053078))


### Fixes

* **salt/roots/pillar/saferwall.sls.example:** Add `bridge` to prevent pod networking conflict with `filebeat` pod ([1bc972c](https://github.com/extra2000/saferwall-box/commit/1bc972c49fd947c73db2f957c8f780f481c5b1c8))


### Continuous Integrations

* **AppVeyor:** Add instructions to copy `zabbix-agent` and `filebeat` SaltStack pillar files ([db301aa](https://github.com/extra2000/saferwall-box/commit/db301aa35ef84f3e0b25ddbd0309df43ff18a936))


### Documentations

* **README:** Add instructions to configure NGINX for Saferwall HTTPS ([5272bf9](https://github.com/extra2000/saferwall-box/commit/5272bf94fbe62e7ea6ee4ba07f6fa4471c6cf759))
* **README:** Add instructions to copy `zabbix-agent` and `filebeat` SaltStack pillar files before creating Vagrant box ([4c68d41](https://github.com/extra2000/saferwall-box/commit/4c68d41687fde895e195d818f5c89b2beab9e2e0))
* **README:** Add instructions to deploy `filebeat` ([f5e2b67](https://github.com/extra2000/saferwall-box/commit/f5e2b67602ceb8ebbbeaedb83b46bdbd324907b4))

### [2.2.1](https://github.com/extra2000/saferwall-box/compare/v2.2.0...v2.2.1) (2021-03-02)


### Fixes

* **saferwall-formula:** Update to `saferwall-formula` to [v2.2.1](https://github.com/extra2000/saferwall-formula/releases/tag/v2.2.1) which may fix compatibality with Podman v3.x ([dd67b3e](https://github.com/extra2000/saferwall-box/commit/dd67b3e95c4c2c4648f39eaf5b089d2218aef742))

## [2.2.0](https://github.com/extra2000/saferwall-box/compare/v2.1.0...v2.2.0) (2021-02-11)


### Features

* **saferwall-formula:** Update to [v2.2.0](https://github.com/extra2000/saferwall-formula/releases/tag/v2.2.0) ([6e317bc](https://github.com/extra2000/saferwall-box/commit/6e317bc1f6d482228116318e84768786f2e04017))
* **vagrant:** Add Fedora 33 `x86_64` box ([4c7fd72](https://github.com/extra2000/saferwall-box/commit/4c7fd726c2289382475f719dbe7005a791cd7bfa))


### Continuous Integrations

* **git:** Ensure submodules are pulled recursively ([ee72271](https://github.com/extra2000/saferwall-box/commit/ee7227176ae20e62a43885bb3b4f12848a693516))
* **vagrant:** Change from Fedora 32 to Fedora 33 ([9a507e2](https://github.com/extra2000/saferwall-box/commit/9a507e222959cb1b8f379abefefb6c0262cf8705))


### Documentations

* **nginx.sls.example:** Reduce client max body size from 100M to 80M since file upload size is limited to 64MB ([940e1e9](https://github.com/extra2000/saferwall-box/commit/940e1e98290722a4e23ec26421d6a0bfa9dd916b))
* **README:** Default Vagrant box to Fedora 33 ([d4ab3ea](https://github.com/extra2000/saferwall-box/commit/d4ab3eaaf8d6d2e7fd153c87bd6c8cc3e7e68a5c))
* **saferwall.sls.example:** Disable `windefender` by default because latest definition update causes `floating point exception` error ([17b9dc5](https://github.com/extra2000/saferwall-box/commit/17b9dc54d5eaeb360129fe6454e2607bd4bf60e3))
* **saferwall.sls.example:** Increase default max size for file upload from 32MB to 64MB and fine tune container resources for the 64MB file upload ([be787e4](https://github.com/extra2000/saferwall-box/commit/be787e4091c5efa35fdb818b766161bc62430653))

## [2.1.0](https://github.com/extra2000/saferwall-box/compare/v2.0.1...v2.1.0) (2021-01-20)


### Features

* **submodule:** Update `cockpit-formula` to [v1.0.2](https://github.com/extra2000/cockpit-formula/releases/tag/v1.0.2) ([7495ce8](https://github.com/extra2000/saferwall-box/commit/7495ce87dfa336bebcd8e8776b000f4210907fab))
* **submodule:** Update `podman-formula` to [v2.2.1](https://github.com/extra2000/podman-formula/releases/tag/v2.2.1) ([4b027bc](https://github.com/extra2000/saferwall-box/commit/4b027bcd7980c30f8db020fcf3978944c37d0d82))


### Continuous Integrations

* **AppVeyor:** Update Ubuntu from `18.04` to `20.04` ([294b922](https://github.com/extra2000/saferwall-box/commit/294b922ca8790df13053f400c78674c634dd6521))

### [2.0.1](https://github.com/extra2000/saferwall-box/compare/v2.0.0...v2.0.1) (2021-01-17)


### Documentations

* **docs/creating-saferwall-box.md:** Disable Couchbase `search` service to minimize memory usage ([dc9084a](https://github.com/extra2000/saferwall-box/commit/dc9084a05f30b0d159979ae807259401068796dc))
* **docs/creating-saferwall-box.md:** Simplify services deployment by using states in `saferwall.service` ([849e602](https://github.com/extra2000/saferwall-box/commit/849e6020d64fc7691e675f4093ffcf68f3b82628))
* **salt/roots/pillar/saferwall.sls.example:** Add missing configurations for `consumer` ([a71ca7d](https://github.com/extra2000/saferwall-box/commit/a71ca7d58a01f3f13ad2ef61deb7b1fae2ee9a81))
* **salt/roots/pillar/saferwall.sls.example:** Increase memory limit for `couchbase` ([4df43f4](https://github.com/extra2000/saferwall-box/commit/4df43f4fc0dad1cd74610d801805d4d6d1680eac))


### Fixes

* **cockpit-formula:** Update to [v1.0.1](https://github.com/extra2000/cockpit-formula/releases/tag/v1.0.1) ([b9fbf51](https://github.com/extra2000/saferwall-box/commit/b9fbf516988e897821892979c8ee72d2159349f1))
* **saferwall-formula:** Update to [v2.0.1](https://github.com/extra2000/saferwall-formula/releases/tag/v2.0.1) ([50d085b](https://github.com/extra2000/saferwall-box/commit/50d085b86b0656d13f753fb44ea24eb3b553eb39))

## [2.0.0](https://github.com/extra2000/saferwall-box/compare/v1.1.1...v2.0.0) (2021-01-09)


### ⚠ BREAKING CHANGES

* **pillar:** Pillar data and structure for Saferwall have changed.
* **salt:** No longer using bridge network for Podman container intercommunications.

### Features

* **pillar:** Update Saferwall pillar data and structure ([9c7f6ea](https://github.com/extra2000/saferwall-box/commit/9c7f6eacf659c1993ce1c9d8e735c8da7de53a27))
* **saferwall-formula:** Update ([ceaa6ec](https://github.com/extra2000/saferwall-box/commit/ceaa6ecae339fb7d95e62662eb665209a74c0387))
* **submodule:** Add Cockpit Formula and replace exisiting Cockpit ([f320f0e](https://github.com/extra2000/saferwall-box/commit/f320f0e4103781e002bd9c0f64368636244d0511))


### Performance Improvements

* **vagrant:** Increase number of vCPUs to 4 and RAM to 6GB ([a234bef](https://github.com/extra2000/saferwall-box/commit/a234befff8e10d0f3ac4d8491329c60ead1dc6c2))


### Code Refactoring

* **salt:** Bridgenet have been removed ([96c3acd](https://github.com/extra2000/saferwall-box/commit/96c3acdb15cc179967bac17b13ebe6b57c65d5e2))


### Documentations

* **creating-saferwall-box.md:** Add `--network=saferwall` on `Podman play kube` commands ([07e32ad](https://github.com/extra2000/saferwall-box/commit/07e32ada82021063b9fbd699ed9be73d1e859ca8))
* **README:** Update Diagrams ([205899e](https://github.com/extra2000/saferwall-box/commit/205899e8c5b908773420115e23d6da0c0d602a86))

### [1.1.1](https://github.com/extra2000/saferwall-box/compare/v1.1.0...v1.1.1) (2020-12-14)


### Fixes

* **vagrant:** Change VirtualBox deployment from headless to GUI. This may fix issues such as Virtualbox randomly hang. ([219cb8f](https://github.com/extra2000/saferwall-box/commit/219cb8f18364036f4940f064e8a1f5f4810e48c1))

## [1.1.0](https://github.com/extra2000/saferwall-box/compare/v1.0.0...v1.1.0) (2020-12-02)


### Features

* **cockpit:** Add `cockpit-pcp` and `pmlogger` for performance metrics history ([f11ebae](https://github.com/extra2000/saferwall-box/commit/f11ebaef966f7bd99ac5002af31df215589b8545))

## 1.0.0 (2020-12-01)


### Features

* **nginx:** Add `dhparam` options for SSL ([078f83a](https://github.com/extra2000/saferwall-box/commit/078f83af3d5013b852b5ee23d7da258cb3c087e5))
* **pillar.saferwall:** Update keys and values ([b3abb70](https://github.com/extra2000/saferwall-box/commit/b3abb70a2ae4a85fa20d18dd85a9031f5f9d3f69))
* **podman-formula:** Update to [v2.1.0-alpha.1](https://github.com/extra2000/podman-formula/releases/tag/v2.1.0-alpha.1) ([2513fcb](https://github.com/extra2000/saferwall-box/commit/2513fcbe10e8afc5030be87e1c432ecbbaea4eda))
* **podman-formula:** Update to [v2.2.0](https://github.com/extra2000/podman-formula/releases/v2.2.0) ([b778dbd](https://github.com/extra2000/saferwall-box/commit/b778dbdd3f83a3fda796fbc1e9321543a92723f4))
* **podman-formula:** Update to v2.0.2-alpha.1 ([cb95fab](https://github.com/extra2000/saferwall-box/commit/cb95fab052a5e669c0e25774ae9118ac10120658))
* **saferwall-formula:** New commits ([98dc2ab](https://github.com/extra2000/saferwall-box/commit/98dc2ab351f3fbf56a47433d1e701a4e4991a96a))
* **saferwall-formula:** Update to [v1.0.0-alpha.1](https://github.com/extra2000/saferwall-formula/releases/tag/v1.0.0-alpha.1) ([7b28eef](https://github.com/extra2000/saferwall-box/commit/7b28eef0f98bc757bbab24ab6cc65a169b5c3415))
* **saferwall-formula:** Update to [v1.0.0-alpha.2](https://github.com/extra2000/saferwall-formula/releases/tag/v1.0.0-alpha.2) ([a236ebc](https://github.com/extra2000/saferwall-box/commit/a236ebc475b76814ea1bcfecbe84ea303f3e4954))
* **saferwall-formula:** Update to [v1.0.0-alpha.3](https://github.com/extra2000/saferwall-formula/releases/tag/v1.0.0-alpha.3) ([997d475](https://github.com/extra2000/saferwall-box/commit/997d475baaac71999d9aa45c93736180bb3b442c))
* **saferwall-formula:** Update to [v1.0.0-alpha.6](https://github.com/extra2000/saferwall-formula/releases/v1.0.0-alpha.6) ([9138098](https://github.com/extra2000/saferwall-box/commit/9138098fa191431d32b3460c30144e34c6e9813d))
* **saferwall-formula:** Update to [v1.0.0](https://github.com/extra2000/saferwall-formula/releases/v1.0.0) ([f8896e3](https://github.com/extra2000/saferwall-box/commit/f8896e3027c5a98378e3153172e6cfaf95e277db))
* **salt:** Add `swapoff` to disable swap ([2f3aca5](https://github.com/extra2000/saferwall-box/commit/2f3aca54fb277cd0ba2758ae3ae4f1853a5c0a4c))
* **salt:** Add Cockpit with addons ([cd25fde](https://github.com/extra2000/saferwall-box/commit/cd25fde44b87a1de87b290a808765cf383c3bcd2))
* **salt:** Add NGINX with self-signed SSL ([28a9dac](https://github.com/extra2000/saferwall-box/commit/28a9dacc7545df36e6cef2afcc35dd7bf5dbaf7e))
* **salt.bridgenet:** Add support for Debian, Ubuntu, and SUSE families ([132ce84](https://github.com/extra2000/saferwall-box/commit/132ce84cc1ea8212b7ff8c81a4f1c8a7e347210f))
* **vagrant:** Add Debian 10 x86_64 box ([1505895](https://github.com/extra2000/saferwall-box/commit/1505895ebbc526a8954ad45d6cb7ec4c766e6508))
* **vagrant:** Add openSUSE Leap 15.2 `aarch64` KVM box ([4eee235](https://github.com/extra2000/saferwall-box/commit/4eee235b76383469e8bfba366c4ccc26f2147a8f))
* **vagrant:** Add openSUSE Leap 15.2 aarch64 box ([cbc78e2](https://github.com/extra2000/saferwall-box/commit/cbc78e2524cd383ab8d7a695e5c6a54cfbbbc204))
* **vagrant:** Add openSUSE Leap 15.2 x86_64 box ([968a0cc](https://github.com/extra2000/saferwall-box/commit/968a0ccc87dea7ba74ce14c27ccc63efe2370451))
* **vagrant:** Add openSUSE Tumbleweed `aarch64` KVM box ([9b66f9d](https://github.com/extra2000/saferwall-box/commit/9b66f9d1103e966465241b67bcfbb12ed36f35ea))
* **vagrant:** Add openSUSE Tumbleweed aarch64 box ([299853c](https://github.com/extra2000/saferwall-box/commit/299853cde207ecba135447cc485c9a39ad50fb18))
* **vagrant:** Add openSUSE Tumbleweed x86_64 box ([90c74e9](https://github.com/extra2000/saferwall-box/commit/90c74e9994456cdb26cfa4004001a9d05006c62e))
* **vagrant:** Add Ubuntu 20.04 x86_64 box ([f8a993b](https://github.com/extra2000/saferwall-box/commit/f8a993b2525ee95954b1c573beeec5f8a39ec642))
* **vagrant:** Change CentOS 7 to Fedora 32 which brings Podman version 2.x ([285d94d](https://github.com/extra2000/saferwall-box/commit/285d94dd93202ace4a170030ceb17f95e258ebf0))
* Add intial commit of saferwall-formula ([2635bfb](https://github.com/extra2000/saferwall-box/commit/2635bfb4e6711f1c6d11c7f0fb53cb3e6a51af99))
* Add podman formula ([7b81b75](https://github.com/extra2000/saferwall-box/commit/7b81b757f8cc7785c6f55427b5aadd9f2d84dc87))
* Add Vagrant ([f288765](https://github.com/extra2000/saferwall-box/commit/f2887650d5d8d59d301c0dde5788ee062161710e))
* Initial salt/ implementations ([26ef1ad](https://github.com/extra2000/saferwall-box/commit/26ef1adb83fe50b8ed913b15035082396c44f562))


### Performance Improvements

* **vagrant:** Reduce RAM from 8GB to 4GB ([24d0ffb](https://github.com/extra2000/saferwall-box/commit/24d0ffb0b4373b9b0341cba8020faaf197acacf0))
* **vagrant:** Reduce vCPUs from 4 cores to 2 cores ([d9fb145](https://github.com/extra2000/saferwall-box/commit/d9fb14549f1c02ba5897c6b9d2889932ccc288e3))


### Styles

* Add .gitignore ([93264ca](https://github.com/extra2000/saferwall-box/commit/93264ca6246eaeca6d885d59d2abe1aee7059419))


### Code Refactoring

* **pillar:** Add NGINX and Saferwall pillars into `.gitignore` which requires user to rename example pillars ([d4faae5](https://github.com/extra2000/saferwall-box/commit/d4faae5d5633097819f88de5fd4147891146a174))
* **vagrant:** Add main box into `.gitignore` which require user have to rename any Vagrant examples to the main box's name ([c7c93fd](https://github.com/extra2000/saferwall-box/commit/c7c93fda7658e4792740817dc0e34408f829f13c))
* **vagrant:** Disable VirtualBox Guest Additions auto-install ([f07e2a4](https://github.com/extra2000/saferwall-box/commit/f07e2a4c526c8767eb06b2ab7414d649f831b939))
* **vagrant:** Postfix openSUSE `aarch64` QEMU file name with `.qemu` ([4766c1e](https://github.com/extra2000/saferwall-box/commit/4766c1e783650606e24d532a6f79a6b81b7f6763))
* **vagrant:** Rename `amd64` to `x86_64` ([0797eac](https://github.com/extra2000/saferwall-box/commit/0797eac34e3807d5b9e4f30c57de411db2d6b661))
* **vagrant:** Rename generic-box to saferwall-box ([c8177af](https://github.com/extra2000/saferwall-box/commit/c8177af43d19785510637e650d7e522ff62dba87))
* **vagrant, readme:** Move Vagrant files into `vagrant/examples/` ([6e08cfc](https://github.com/extra2000/saferwall-box/commit/6e08cfccac504ad45e49cdac5881957029a2b856))
* **vagrant.fedora-32.amd64:** Remove `box_version` ([9c521e8](https://github.com/extra2000/saferwall-box/commit/9c521e8f2e1e7afd9478b8c9f3e517c1a1198e20))


### Continuous Integrations

* **semantic-release:** Write version to `VERSION.txt` file ([ebb61c3](https://github.com/extra2000/saferwall-box/commit/ebb61c3e08aaf6067244ed360f0a6cd71b06755b))
* Remove Travis CI because it is no longer free ([29091a5](https://github.com/extra2000/saferwall-box/commit/29091a547bb9b08fd98c8e88f64e3169a921cc31))
* **AppVeyor:** Add `semantic-release` ([a7c0929](https://github.com/extra2000/saferwall-box/commit/a7c0929c18edc73743deb238a01c3de0e977b6e0))
* **AppVeyor:** Update instruction for copying Vagrant example file ([39ac70f](https://github.com/extra2000/saferwall-box/commit/39ac70f7bc9db8315a148a344ef54bead403d95f))
* Add Travis CI, AppVeyor, and semantic-release ([a5a4c95](https://github.com/extra2000/saferwall-box/commit/a5a4c95d48ad4ac453e46d60a82adfe487cff1a5))
* Copy `vagrant/Vagrantfile.saferwall-box.fedora-32.amd64.example` to `vagrant/Vagrantfile.saferwall-box` ([e943223](https://github.com/extra2000/saferwall-box/commit/e94322350df1f4bb551eb1d4a7e2ac8b2b6d16d0))


### Documentations

* **creating-saferwall-box:** Add port-forwarding to external devices via host `firewalld` ([f5c1675](https://github.com/extra2000/saferwall-box/commit/f5c1675a4252ecc256b62a4a26961b46b1d5594e))
* **README:** Add a list of supported CPU architectures ([65d186a](https://github.com/extra2000/saferwall-box/commit/65d186ad15bf1d00d66282fb3c723953ba000c3a))
* **README:** Add badges ([af83e2c](https://github.com/extra2000/saferwall-box/commit/af83e2c1df0804f8bbece7ad2e8c282e157e76e1))
* **README:** Add Cockpit known issues when login after `vagrant destroy` ([2224b4d](https://github.com/extra2000/saferwall-box/commit/2224b4df5a49a0b10a75247b69c8a7f0aa20a51b))
* **README:** Add deployment diagram ([a723f2d](https://github.com/extra2000/saferwall-box/commit/a723f2db29ed8e1ea8935a6db31b6ab7039334ca))
* **README:** Add example login credentials ([5c16bc6](https://github.com/extra2000/saferwall-box/commit/5c16bc6d2fab7df1a26736449b93919d872b9167))
* **README:** Add instruction to use Cockpit terminal instead of `vagrant ssh` ([4451ee7](https://github.com/extra2000/saferwall-box/commit/4451ee7a6d012020a77335e9721027036264d11e))
* **README:** Add instructions to create persistent volumes for containers ([bd7f5e1](https://github.com/extra2000/saferwall-box/commit/bd7f5e19bd18c4f6a0f371f58bb61de7fade6f8e))
* **README:** Add link to MalwareBazaar for resources on testing Saferwall ([647b060](https://github.com/extra2000/saferwall-box/commit/647b0602efe8406ef57818f411cb3df1e67fb89a))
* **README:** Change `vagrant up` default to virtualbox provider ([991c754](https://github.com/extra2000/saferwall-box/commit/991c7543fea9ecb5ce37e4c526aaeda8def8fe8c))
* **README:** Change multiav deployment to Podman Pod YAML file ([41fc97a](https://github.com/extra2000/saferwall-box/commit/41fc97a96a30d7f743b7038c4014cde253f023e5))
* **README:** Fix Section URLs ([08faea3](https://github.com/extra2000/saferwall-box/commit/08faea3bf1cc4947a19e8ca2675ad6c7f528906b))
* **README:** Initial documentations ([0a255ca](https://github.com/extra2000/saferwall-box/commit/0a255cadd8e6178dff9860f29d5ea1fc71e10f02))
* **README:** Re-organize into Chapters and add more explanation ([101c9f5](https://github.com/extra2000/saferwall-box/commit/101c9f5f01853de60cf5ba8aad2c396cdb398d99))
* **README:** Remove instruction to create persistent volume ([145df51](https://github.com/extra2000/saferwall-box/commit/145df51f67594d7cab701b7604bed277970c3a11))
* **README:** Remove Travis CI badge ([be47884](https://github.com/extra2000/saferwall-box/commit/be4788441bbb465ee4978131ef00863b4327e76d))
* **README:** Update instructions ([81afdda](https://github.com/extra2000/saferwall-box/commit/81afdda773e601e8d839b46e6c8a5bbc6a043d61))
* **regular-usage:** Destroy container before shutdown and recreate again on next boot ([a395500](https://github.com/extra2000/saferwall-box/commit/a3955009f11861b62c1d91ef8508c88701f7430f))
* **vagrant:** Add commented port forwarding ([71e3d40](https://github.com/extra2000/saferwall-box/commit/71e3d4055eb73a2be3ba7b3e9edd2c870948ce0e))


### Maintenance

* **release:** 1.0.0-alpha.1 [skip ci] ([25f05f3](https://github.com/extra2000/saferwall-box/commit/25f05f3c9c642d4eb928f271c17a5e8c8c8a59bf))
* **release:** 1.0.0-alpha.2 [skip ci] ([fa0575e](https://github.com/extra2000/saferwall-box/commit/fa0575e8ea0f026e66610212ad6e1579444a11cd))
* **release:** 1.0.0-alpha.3 [skip ci] ([4851dd3](https://github.com/extra2000/saferwall-box/commit/4851dd3552d3e5980a64ac25479b3aeffa1b1f98))
* **release:** 1.0.0-alpha.4 [skip ci] ([3f73f1f](https://github.com/extra2000/saferwall-box/commit/3f73f1f32e2e459f58737f33453c087cbaff6815))
* **release:** 1.0.0-alpha.5 [skip ci] ([e7ef308](https://github.com/extra2000/saferwall-box/commit/e7ef30850170ceccd2a51d2edc9407a97f99f777))
* **release:** 1.0.0-alpha.6 [skip ci] ([d397b7c](https://github.com/extra2000/saferwall-box/commit/d397b7c7730939db4c0b50bc499d5153dcd143df))
* **release:** 1.0.0-alpha.7 [skip ci] ([b9d69ca](https://github.com/extra2000/saferwall-box/commit/b9d69ca8cd209ca75e4628ba8aad44a0e5b6e16f))
* **release:** 1.0.0-alpha.8 [skip ci] ([0ba3bb4](https://github.com/extra2000/saferwall-box/commit/0ba3bb41c7ebf876c7af38bfac7cbcd99b73a7bd))


### Fixes

* **bridgenet:** Fix bridge network not working on Fedora 32 ([159f33e](https://github.com/extra2000/saferwall-box/commit/159f33e074d71fbfeb99a38259055245cab0daf8))
* **cockpit:** Restrict Cockpit to RedHat families only, due to bad support on other distros ([c91484b](https://github.com/extra2000/saferwall-box/commit/c91484b51af227fc9cbab10903c02b9ae4f35bcf))
* **nginx:** Fix client max body size for large file uploads ([be2cf78](https://github.com/extra2000/saferwall-box/commit/be2cf784849839c19a279fa647d6d1883f70f4d7))
* **nginx:** Fix SELinux problem ([b63a3ca](https://github.com/extra2000/saferwall-box/commit/b63a3ca806ff5e9a7209719dd12d5736249b3938))
* **saferwall-formula:** Fix BASH scripts CRLF issues on Windows ([095adc7](https://github.com/extra2000/saferwall-box/commit/095adc7f17ee9a7a88ca878d4898473963ddc56d))
* **salt.bridgenet:** Fix networking issues after reboot on SUSE family ([e21f7f1](https://github.com/extra2000/saferwall-box/commit/e21f7f1abb6731401928fe998f93cae960c632a7))
* **salt.bridgenet:** Fix NetworkManager not properly restarted on Ubuntu ([0395045](https://github.com/extra2000/saferwall-box/commit/03950453dd223d7fac0740429fb0ee79ba61a654))
* **salt.nginx:** Fix NGINX failed on distro other than Fedora 32 ([aa271c4](https://github.com/extra2000/saferwall-box/commit/aa271c42a36cfa417857a5aab79daabaa7fd1b6d))
* **vagrant:** Fix CPU topology does not match VCPU count ([22444bd](https://github.com/extra2000/saferwall-box/commit/22444bd3f178a7221e7429f9b67188842fb3fd8a))
* **vagrant:** Fix Fedora 32 `x86_64` could not be found from Vagrant Cloud ([ba96565](https://github.com/extra2000/saferwall-box/commit/ba96565e1de8597fadeaf961cc5d0c13a83a5394))
* **vagrant:** Fix vagrant boxes unable to communicate with other nodes ([4ca5556](https://github.com/extra2000/saferwall-box/commit/4ca5556a8011c33c7c1f3c26b4201cf46ef882c7))

## [1.0.0-alpha.8](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.7...v1.0.0-alpha.8) (2020-12-01)


### Features

* **saferwall-formula:** Update to [v1.0.0](https://github.com/extra2000/saferwall-formula/releases/v1.0.0) ([f8896e3](https://github.com/extra2000/saferwall-box/commit/f8896e3027c5a98378e3153172e6cfaf95e277db))

## [1.0.0-alpha.7](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.6...v1.0.0-alpha.7) (2020-11-30)


### Features

* **podman-formula:** Update to [v2.2.0](https://github.com/extra2000/podman-formula/releases/v2.2.0) ([b778dbd](https://github.com/extra2000/saferwall-box/commit/b778dbdd3f83a3fda796fbc1e9321543a92723f4))
* **saferwall-formula:** Update to [v1.0.0-alpha.6](https://github.com/extra2000/saferwall-formula/releases/v1.0.0-alpha.6) ([9138098](https://github.com/extra2000/saferwall-box/commit/9138098fa191431d32b3460c30144e34c6e9813d))
* **vagrant:** Add openSUSE Leap 15.2 `aarch64` KVM box ([4eee235](https://github.com/extra2000/saferwall-box/commit/4eee235b76383469e8bfba366c4ccc26f2147a8f))
* **vagrant:** Add openSUSE Tumbleweed `aarch64` KVM box ([9b66f9d](https://github.com/extra2000/saferwall-box/commit/9b66f9d1103e966465241b67bcfbb12ed36f35ea))


### Fixes

* **salt.bridgenet:** Fix networking issues after reboot on SUSE family ([e21f7f1](https://github.com/extra2000/saferwall-box/commit/e21f7f1abb6731401928fe998f93cae960c632a7))
* **salt.bridgenet:** Fix NetworkManager not properly restarted on Ubuntu ([0395045](https://github.com/extra2000/saferwall-box/commit/03950453dd223d7fac0740429fb0ee79ba61a654))
* **vagrant:** Fix vagrant boxes unable to communicate with other nodes ([4ca5556](https://github.com/extra2000/saferwall-box/commit/4ca5556a8011c33c7c1f3c26b4201cf46ef882c7))


### Code Refactoring

* **vagrant:** Postfix openSUSE `aarch64` QEMU file name with `.qemu` ([4766c1e](https://github.com/extra2000/saferwall-box/commit/4766c1e783650606e24d532a6f79a6b81b7f6763))
* **vagrant:** Rename generic-box to saferwall-box ([c8177af](https://github.com/extra2000/saferwall-box/commit/c8177af43d19785510637e650d7e522ff62dba87))
* **vagrant, readme:** Move Vagrant files into `vagrant/examples/` ([6e08cfc](https://github.com/extra2000/saferwall-box/commit/6e08cfccac504ad45e49cdac5881957029a2b856))


### Continuous Integrations

* **semantic-release:** Write version to `VERSION.txt` file ([ebb61c3](https://github.com/extra2000/saferwall-box/commit/ebb61c3e08aaf6067244ed360f0a6cd71b06755b))
* Remove Travis CI because it is no longer free ([29091a5](https://github.com/extra2000/saferwall-box/commit/29091a547bb9b08fd98c8e88f64e3169a921cc31))
* **AppVeyor:** Add `semantic-release` ([a7c0929](https://github.com/extra2000/saferwall-box/commit/a7c0929c18edc73743deb238a01c3de0e977b6e0))
* **AppVeyor:** Update instruction for copying Vagrant example file ([39ac70f](https://github.com/extra2000/saferwall-box/commit/39ac70f7bc9db8315a148a344ef54bead403d95f))


### Documentations

* **creating-saferwall-box:** Add port-forwarding to external devices via host `firewalld` ([f5c1675](https://github.com/extra2000/saferwall-box/commit/f5c1675a4252ecc256b62a4a26961b46b1d5594e))
* **README:** Remove Travis CI badge ([be47884](https://github.com/extra2000/saferwall-box/commit/be4788441bbb465ee4978131ef00863b4327e76d))
* **regular-usage:** Destroy container before shutdown and recreate again on next boot ([a395500](https://github.com/extra2000/saferwall-box/commit/a3955009f11861b62c1d91ef8508c88701f7430f))
* **vagrant:** Add commented port forwarding ([71e3d40](https://github.com/extra2000/saferwall-box/commit/71e3d4055eb73a2be3ba7b3e9edd2c870948ce0e))

## [1.0.0-alpha.6](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.5...v1.0.0-alpha.6) (2020-11-05)


### Features

* **vagrant:** Add openSUSE Leap 15.2 aarch64 box ([cbc78e2](https://github.com/extra2000/saferwall-box/commit/cbc78e2524cd383ab8d7a695e5c6a54cfbbbc204))

## [1.0.0-alpha.5](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.4...v1.0.0-alpha.5) (2020-11-04)


### Documentations

* **README:** Add a list of supported CPU architectures ([65d186a](https://github.com/extra2000/saferwall-box/commit/65d186ad15bf1d00d66282fb3c723953ba000c3a))
* **README:** Add deployment diagram ([a723f2d](https://github.com/extra2000/saferwall-box/commit/a723f2db29ed8e1ea8935a6db31b6ab7039334ca))
* **README:** Fix Section URLs ([08faea3](https://github.com/extra2000/saferwall-box/commit/08faea3bf1cc4947a19e8ca2675ad6c7f528906b))

## [1.0.0-alpha.4](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.3...v1.0.0-alpha.4) (2020-11-04)


### Features

* **podman-formula:** Update to [v2.1.0-alpha.1](https://github.com/extra2000/podman-formula/releases/tag/v2.1.0-alpha.1) ([2513fcb](https://github.com/extra2000/saferwall-box/commit/2513fcbe10e8afc5030be87e1c432ecbbaea4eda))
* **saferwall-formula:** Update to [v1.0.0-alpha.2](https://github.com/extra2000/saferwall-formula/releases/tag/v1.0.0-alpha.2) ([a236ebc](https://github.com/extra2000/saferwall-box/commit/a236ebc475b76814ea1bcfecbe84ea303f3e4954))
* **saferwall-formula:** Update to [v1.0.0-alpha.3](https://github.com/extra2000/saferwall-formula/releases/tag/v1.0.0-alpha.3) ([997d475](https://github.com/extra2000/saferwall-box/commit/997d475baaac71999d9aa45c93736180bb3b442c))
* **salt:** Add `swapoff` to disable swap ([2f3aca5](https://github.com/extra2000/saferwall-box/commit/2f3aca54fb277cd0ba2758ae3ae4f1853a5c0a4c))
* **salt.bridgenet:** Add support for Debian, Ubuntu, and SUSE families ([132ce84](https://github.com/extra2000/saferwall-box/commit/132ce84cc1ea8212b7ff8c81a4f1c8a7e347210f))
* **vagrant:** Add Debian 10 x86_64 box ([1505895](https://github.com/extra2000/saferwall-box/commit/1505895ebbc526a8954ad45d6cb7ec4c766e6508))
* **vagrant:** Add openSUSE Leap 15.2 x86_64 box ([968a0cc](https://github.com/extra2000/saferwall-box/commit/968a0ccc87dea7ba74ce14c27ccc63efe2370451))
* **vagrant:** Add openSUSE Tumbleweed aarch64 box ([299853c](https://github.com/extra2000/saferwall-box/commit/299853cde207ecba135447cc485c9a39ad50fb18))
* **vagrant:** Add openSUSE Tumbleweed x86_64 box ([90c74e9](https://github.com/extra2000/saferwall-box/commit/90c74e9994456cdb26cfa4004001a9d05006c62e))
* **vagrant:** Add Ubuntu 20.04 x86_64 box ([f8a993b](https://github.com/extra2000/saferwall-box/commit/f8a993b2525ee95954b1c573beeec5f8a39ec642))


### Code Refactoring

* **vagrant:** Rename `amd64` to `x86_64` ([0797eac](https://github.com/extra2000/saferwall-box/commit/0797eac34e3807d5b9e4f30c57de411db2d6b661))
* **vagrant.fedora-32.amd64:** Remove `box_version` ([9c521e8](https://github.com/extra2000/saferwall-box/commit/9c521e8f2e1e7afd9478b8c9f3e517c1a1198e20))


### Fixes

* **cockpit:** Restrict Cockpit to RedHat families only, due to bad support on other distros ([c91484b](https://github.com/extra2000/saferwall-box/commit/c91484b51af227fc9cbab10903c02b9ae4f35bcf))
* **salt.nginx:** Fix NGINX failed on distro other than Fedora 32 ([aa271c4](https://github.com/extra2000/saferwall-box/commit/aa271c42a36cfa417857a5aab79daabaa7fd1b6d))


### Documentations

* **README:** Add instructions to create persistent volumes for containers ([bd7f5e1](https://github.com/extra2000/saferwall-box/commit/bd7f5e19bd18c4f6a0f371f58bb61de7fade6f8e))
* **README:** Add link to MalwareBazaar for resources on testing Saferwall ([647b060](https://github.com/extra2000/saferwall-box/commit/647b0602efe8406ef57818f411cb3df1e67fb89a))
* **README:** Re-organize into Chapters and add more explanation ([101c9f5](https://github.com/extra2000/saferwall-box/commit/101c9f5f01853de60cf5ba8aad2c396cdb398d99))
* **README:** Remove instruction to create persistent volume ([145df51](https://github.com/extra2000/saferwall-box/commit/145df51f67594d7cab701b7604bed277970c3a11))

## [1.0.0-alpha.3](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.2...v1.0.0-alpha.3) (2020-11-01)


### Features

* **saferwall-formula:** Update to [v1.0.0-alpha.1](https://github.com/extra2000/saferwall-formula/releases/tag/v1.0.0-alpha.1) ([7b28eef](https://github.com/extra2000/saferwall-box/commit/7b28eef0f98bc757bbab24ab6cc65a169b5c3415))
* **salt:** Add Cockpit with addons ([cd25fde](https://github.com/extra2000/saferwall-box/commit/cd25fde44b87a1de87b290a808765cf383c3bcd2))


### Documentations

* **README:** Add Cockpit known issues when login after `vagrant destroy` ([2224b4d](https://github.com/extra2000/saferwall-box/commit/2224b4df5a49a0b10a75247b69c8a7f0aa20a51b))
* **README:** Add example login credentials ([5c16bc6](https://github.com/extra2000/saferwall-box/commit/5c16bc6d2fab7df1a26736449b93919d872b9167))
* **README:** Add instruction to use Cockpit terminal instead of `vagrant ssh` ([4451ee7](https://github.com/extra2000/saferwall-box/commit/4451ee7a6d012020a77335e9721027036264d11e))
* **README:** Change multiav deployment to Podman Pod YAML file ([41fc97a](https://github.com/extra2000/saferwall-box/commit/41fc97a96a30d7f743b7038c4014cde253f023e5))

## [1.0.0-alpha.2](https://github.com/extra2000/saferwall-box/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2020-10-29)


### Fixes

* **saferwall-formula:** Fix BASH scripts CRLF issues on Windows ([095adc7](https://github.com/extra2000/saferwall-box/commit/095adc7f17ee9a7a88ca878d4898473963ddc56d))


### Documentations

* **README:** Change `vagrant up` default to virtualbox provider ([991c754](https://github.com/extra2000/saferwall-box/commit/991c7543fea9ecb5ce37e4c526aaeda8def8fe8c))

## 1.0.0-alpha.1 (2020-10-28)


### Features

* **nginx:** Add `dhparam` options for SSL ([078f83a](https://github.com/extra2000/saferwall-box/commit/078f83af3d5013b852b5ee23d7da258cb3c087e5))
* **pillar.saferwall:** Update keys and values ([b3abb70](https://github.com/extra2000/saferwall-box/commit/b3abb70a2ae4a85fa20d18dd85a9031f5f9d3f69))
* **podman-formula:** Update to v2.0.2-alpha.1 ([cb95fab](https://github.com/extra2000/saferwall-box/commit/cb95fab052a5e669c0e25774ae9118ac10120658))
* **saferwall-formula:** New commits ([98dc2ab](https://github.com/extra2000/saferwall-box/commit/98dc2ab351f3fbf56a47433d1e701a4e4991a96a))
* **salt:** Add NGINX with self-signed SSL ([28a9dac](https://github.com/extra2000/saferwall-box/commit/28a9dacc7545df36e6cef2afcc35dd7bf5dbaf7e))
* **vagrant:** Change CentOS 7 to Fedora 32 which brings Podman version 2.x ([285d94d](https://github.com/extra2000/saferwall-box/commit/285d94dd93202ace4a170030ceb17f95e258ebf0))
* Add intial commit of saferwall-formula ([2635bfb](https://github.com/extra2000/saferwall-box/commit/2635bfb4e6711f1c6d11c7f0fb53cb3e6a51af99))
* Add podman formula ([7b81b75](https://github.com/extra2000/saferwall-box/commit/7b81b757f8cc7785c6f55427b5aadd9f2d84dc87))
* Add Vagrant ([f288765](https://github.com/extra2000/saferwall-box/commit/f2887650d5d8d59d301c0dde5788ee062161710e))
* Initial salt/ implementations ([26ef1ad](https://github.com/extra2000/saferwall-box/commit/26ef1adb83fe50b8ed913b15035082396c44f562))


### Performance Improvements

* **vagrant:** Reduce RAM from 8GB to 4GB ([24d0ffb](https://github.com/extra2000/saferwall-box/commit/24d0ffb0b4373b9b0341cba8020faaf197acacf0))
* **vagrant:** Reduce vCPUs from 4 cores to 2 cores ([d9fb145](https://github.com/extra2000/saferwall-box/commit/d9fb14549f1c02ba5897c6b9d2889932ccc288e3))


### Styles

* Add .gitignore ([93264ca](https://github.com/extra2000/saferwall-box/commit/93264ca6246eaeca6d885d59d2abe1aee7059419))


### Continuous Integrations

* Add Travis CI, AppVeyor, and semantic-release ([a5a4c95](https://github.com/extra2000/saferwall-box/commit/a5a4c95d48ad4ac453e46d60a82adfe487cff1a5))
* Copy `vagrant/Vagrantfile.saferwall-box.fedora-32.amd64.example` to `vagrant/Vagrantfile.saferwall-box` ([e943223](https://github.com/extra2000/saferwall-box/commit/e94322350df1f4bb551eb1d4a7e2ac8b2b6d16d0))


### Fixes

* **bridgenet:** Fix bridge network not working on Fedora 32 ([159f33e](https://github.com/extra2000/saferwall-box/commit/159f33e074d71fbfeb99a38259055245cab0daf8))
* **nginx:** Fix client max body size for large file uploads ([be2cf78](https://github.com/extra2000/saferwall-box/commit/be2cf784849839c19a279fa647d6d1883f70f4d7))
* **nginx:** Fix SELinux problem ([b63a3ca](https://github.com/extra2000/saferwall-box/commit/b63a3ca806ff5e9a7209719dd12d5736249b3938))
* **vagrant:** Fix CPU topology does not match VCPU count ([22444bd](https://github.com/extra2000/saferwall-box/commit/22444bd3f178a7221e7429f9b67188842fb3fd8a))


### Code Refactoring

* **pillar:** Add NGINX and Saferwall pillars into `.gitignore` which requires user to rename example pillars ([d4faae5](https://github.com/extra2000/saferwall-box/commit/d4faae5d5633097819f88de5fd4147891146a174))
* **vagrant:** Add main box into `.gitignore` which require user have to rename any Vagrant examples to the main box's name ([c7c93fd](https://github.com/extra2000/saferwall-box/commit/c7c93fda7658e4792740817dc0e34408f829f13c))
* **vagrant:** Disable VirtualBox Guest Additions auto-install ([f07e2a4](https://github.com/extra2000/saferwall-box/commit/f07e2a4c526c8767eb06b2ab7414d649f831b939))


### Documentations

* **README:** Add badges ([af83e2c](https://github.com/extra2000/saferwall-box/commit/af83e2c1df0804f8bbece7ad2e8c282e157e76e1))
* **README:** Initial documentations ([0a255ca](https://github.com/extra2000/saferwall-box/commit/0a255cadd8e6178dff9860f29d5ea1fc71e10f02))
* **README:** Update instructions ([81afdda](https://github.com/extra2000/saferwall-box/commit/81afdda773e601e8d839b46e6c8a5bbc6a043d61))
