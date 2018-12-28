#!/usr/bin/env bash
set -e
# Uninstall Java 9 off the bat, so we can fix our local installation
if brew cask ls --versions "java" &>/dev/null; then
  echo "Uninstalling Java"
  brew cask uninstall java
fi
# Uninstall Java 8
if brew cask ls --versions "java8" &>/dev/null; then
  echo "Uninstalling Java8"
  brew cask uninstall java8
fi
# Uninstall jenv
if brew ls --versions "jenv" &>/dev/null; then
  echo "Uninstalling jenv"
  brew uninstall jenv
fi
# Install jenv, java8 and java9
brew install jenv
mkdir -p ~/.jenv/versions/
eval "$(jenv init -)"
grep 'jenv()' ~/.bashrc.spark > /dev/null 2>&1 || echo "$(jenv init -)" >> ~/.bashrc.spark
source ~/.bashrc.spark
brew cask install java
brew cask install caskroom/versions/java8
# Remove orphans or bad previous installs so we manage things from a clean state
old_versions="$(jenv versions --bare)"
for java_version in ${old_versions}; do
  if [ "${java_version}" == "system" ]; then
    continue
  fi
  echo "Un-managing: ${java_version}"
  jenv remove "${java_version}"
done
# Manage all currently installed versions
for path in /Library/Java/JavaVirtualMachines/*; do
  full_path="${path}/Contents/Home"
  echo "Now managing: ${full_path}"
  jenv add "${full_path}"
done
# Set default to Java 8
# jenv global 1.8
# jenv rehash
# Get maven and gradle to play nice (you might have to run these two commands manually)
# jenv enable-plugin maven
# jenv enable-plugin gradle

