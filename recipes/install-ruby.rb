#
# Cookbook Name:: rails-node
# Recipe:: install-ruby
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, GoShow.io
#
# All rights reserved - Do Not Redistribute
#

rbenv_ruby "#{node['ruby']['version']}"

execute 'rbenv_config_path_01' do
  command "echo PATH=/opt/rbenv/versions/#{node['ruby']['version']}/bin:$PATH >> #{node['user']['homedir']}/.profile"
  returns [0, 1]
end

execute 'ruby_global_setup' do
  command "/opt/rbenv/bin/rbenv global #{node['ruby']['version']}"
  returns [0, 1]
end

directory '/opt/rbenv' do
  owner     node['user']['credentials']['username']
  group     node['user']['credentials']['group']
  recursive true
end

gem_package 'bundler'
