apt_package 'libpq-dev'

include_recipe 'postgresql::server'
include_recipe 'database::postgresql'

gem_package 'pg' do
  gem_binary node['ruby']['gempath']
end

postgresql_connection_info = {
  :host     => '127.0.0.1',
  :port     => 5432,
  :username => node['postgresql']['dbuser'],
  :password => node['postgresql']['password']['postgres']
}

postgresql_database_user node['postgresql']['dbuser'] do
  connection    postgresql_connection_info
  database_name node['postgresql']['dbname']
  privileges    [:all]
  action        :grant
end

postgresql_database node['postgresql']['dbname'] do
  connection(
    :host     => '127.0.0.1',
    :port     => 5432,
    :username => node['postgresql']['dbuser'],
    :password => node['postgresql']['password']['postgres']
  )
  action :create
end