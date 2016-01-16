#!/usr/bin/env bash

set -e

version='1.5'
git_user=$(git config --get-all user.name)
git_email=$(git config --get-all user.email)
maintainer="$git_user <$git_email>"

curl \
  -L https://github.com/stedolan/jq/releases/download/jq-${version}/jq-linux64 \
  -o jq

chmod 755 jq

fpm \
  -s dir \
  -t rpm \
  --name jq \
  --version "$version" \
  --maintainer "$maintainer" \
  --description "jq is a lightweight and flexible command-line JSON processor" \
  --url 'https://stedolan.github.io/jq/' \
  --prefix=/usr/bin jq

rm jq

