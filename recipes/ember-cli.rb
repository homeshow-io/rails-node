#
# Cookbook Name:: rails-node
# Recipe:: ember-cli
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, homeshow.io
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nodejs'

nodejs_npm 'ember-cli' do
  options ['-g']
end