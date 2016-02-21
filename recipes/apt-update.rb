#
# Cookbook Name:: rails-node
# Recipe:: apt-update
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, GoShow.io
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
apt_package    'git-core'
apt_package    'curl'
apt_package    'zlib1g-dev'
apt_package    'build-essential'
apt_package    'libssl-dev'
apt_package    'libreadline-dev'
apt_package    'libyaml-dev'
apt_package    'libsqlite3-dev'
apt_package    'libsqlite3-0'
apt_package    'libxml2-dev'
apt_package    'libxslt1-dev'
apt_package    'libcurl4-openssl-dev'
apt_package    'python-software-properties'
apt_package    'libffi-dev'