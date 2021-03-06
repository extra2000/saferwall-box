# saferwall-box

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/asfogdp5pkbajp3i/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/saferwall-box/branch/master) |

Developer box for Saferwall

![deployment-diagram](docs/resources/deployments.svg)


## Getting started

Read [Known Issues](docs/known-issues.md). Clone this repository and `cd`:
```
$ git clone --recursive https://github.com/extra2000/saferwall-box.git
$ cd saferwall-box
```

Then, follow these instructions:
1. [Creating Saferwall Box](docs/creating-saferwall-box.md)
1. [Regular Usage](docs/regular-usage.md)
1. [Saferwall API with cURL](docs/saferwall-api-with-curl.md)


## Supported CPU architectures

1. `x86_64`

Note that `aarch64` Vagrant files in `vagrant/` are not yet supported.


## Resources

1. [MalwareBazaar](https://bazaar.abuse.ch/). You can test Saferwall using malware files from here.
