apt_package 'libpq-dev'

include_recipe 'postgresql::server'

gem_package 'pg' do
  gem_binary node['ruby']['gempath']
end

execute 'create_role' do
  command "su - postgres -c \"create role myapp with createdb login password 'password1';\" "
end
