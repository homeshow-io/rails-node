#
# Cookbook Name:: rails-node
# Recipe:: install-rails
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, GoShow.io
#
# All rights reserved - Do Not Redistribute
#

gem_package 'rails' 

execute 'rbenv_rehash' do
  command "#{node['rbenv']['bin']} rehash"
end