#
# Cookbook Name:: rails-node
# Recipe:: postgres
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, homeshow.io
#
# All rights reserved - Do Not Redistribute
#

apt_package 'libpq-dev'

include_recipe 'postgresql::server'
include_recipe 'database::postgresql'

gem_package 'pg' do
  gem_binary node['ruby']['gempath']
end

user node['postgresql']['dbuser']  do
  password node['postgresql']['password']['postgres']
end

execute 'postgres_pass_alter' do
  command "sudo -u postgres psql -c \"ALTER ROLE postgres PASSWORD \'puggle42\';\""
end

postgresql_connection_info = {
  :host     => '127.0.0.1',
  :port     => 5432,
  :username => node['postgresql']['dbuser'],
  :password => 'puggle42'
}

postgresql_database_user 'homeshow' do
  connection    postgresql_connection_info
  privileges    [:all]
  action        :create
end

postgresql_database node['postgresql']['dbname'] do
  connection(
    :host     => '127.0.0.1',
    :port     => 5432,
    :username => node['postgresql']['dbuser'],
    :password => 'puggle42'
  )
  action :create
end


