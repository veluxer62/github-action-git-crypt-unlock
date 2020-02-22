#!/bin/sh -l

# set -eu

echo $GIT_CRYPT_KEY | base64  --decode > ./git-crypt-key

git-crypt unlock ./git-crypt-key

cat ./git-crypt-key

cat ./src/main/resources/secret.yml

rm ./git-crypt-key
