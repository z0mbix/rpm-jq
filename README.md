A nice jq RPM
=============

I love [jq](https://stedolan.github.io/jq/), but the version available for CentOS 6 (from EPEL) is 1.3 which is really old now.

jq 1.5 is much better than 1.3 and I needed the newer features for several
parts of our automation.

jq is a single binary and can be easily downloaded from Github, but installing
software with Chef/Puppet etc. is easier when it's a package, hence this repo.

## Where to find it

    /usr/bin/jq

## Requirements

- fpm
- curl

