#
# Cookbook Name:: rails-node
# 
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, homeshow.io
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'rails-node::apt-update'
include_recipe 'rails-node::add-user'
include_recipe 'rails-node::rbenv'
include_recipe 'rails-node::install-ruby'
include_recipe 'rails-node::install-rails'
include_recipe 'rails-node::postgres'
include_recipe 'rails-node::ember-cli'