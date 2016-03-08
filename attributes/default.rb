#
# Cookbook Name:: rails-node
# Recipe:: default
# Author:: Cameron Testerman - camerontesterman@hotmail.com
#
# Copyright 2016, GoShow.io
#
# All rights reserved - Do Not Redistribute
#

#user attributes
default['user']['credentials']['username']    = 'cameron'
default['user']['credentials']['group']       = 'cameron'
default['user']['credentials']['password']    = '$1$xyz$Sa3GxrvdjHZ7hcLQrch2b1'
default['user']['homedir']                    = '/home/cameron'
default['user']['uid']                        = '0630'
default['user']['gid']                        = '0630'

#ruby attributes
default['ruby']['version']                    = '2.3.0'
default['ruby']['gempath']                    = '/opt/rbenv/versions/2.3.0/bin/gem'
default['rbenv']['bin']                       = '/opt/rbenv/bin/rbenv'
default['rbenv']['dir']                       = '/opt/rbenv'

#postgres attributes
default['postgresql']['password']['postgres'] = 'puggle42'
default['postgresql']['dbname']               = 'homeshow'
default['postgresql']['dbuser']               = 'homeshow'