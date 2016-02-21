#
# Cookbook Name:: rails-node
# Recipe:: default
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, GoShow.io
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'rails-node::apt-update'
include_recipe 'rails-node::add-user'
include_recipe 'rails-node::git-rbenv'
include_recipe 'rails-node::install-ruby'