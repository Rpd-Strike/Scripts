#!/bin/bash

echo "

### lsd aliases" >> ~/.zshrc
echo "alias ls='lsd --group-dirs=first '" >> ~/.zshrc
echo "alias lsc='lsd --group-dirs=first -1'" >> ~/.zshrc
echo "alias lsa='lsd --group-dirs=first -a'" >> ~/.zshrc
echo "alias lst='lsd --group-dirs=first -al'" >> ~/.zshrc
