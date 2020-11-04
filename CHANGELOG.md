# Changelog

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
