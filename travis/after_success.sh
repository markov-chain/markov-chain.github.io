#!/bin/bash

set -ev

if [ ! -z "${RUSTDOC_VERSION}" ] && [ "${RUSTDOC_VERSION}" != "${TRAVIS_RUST_VERSION}" ]; then
  exit
fi

curl https://markov-chain.github.io/travis/documentation.sh | bash
