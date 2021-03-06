#!/usr/bin/env bash


##########################
# Docker Setup
##########################

echo "Setting up Docker"
apt-get update
apt-get install -y linux-image-extra- `uname -r`
apt-get install -y cgroup-lite
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\ > /etc/apt/sources.list.d/docker.list"

apt-get update
apt-get install -y lxc-docker