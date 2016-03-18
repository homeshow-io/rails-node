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

nodejs_npm 'bower' do
  options ['-g']
end

gem_package 'bower-rails' do
  gem_binary node['ruby']['gempath']
end

