#!/bin/bash

# prerequisites: cargo / rust

echo " --> debug:::::"
cc --version

source $HOME/.cargo/env
cargo install lsd
