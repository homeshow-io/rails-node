bash "install_ruby_#{node['ruby']['version']}" do
  user node['user']['credentials']['username']
  code <<-EOH
       #{node['user']['homedir']}/.rbenv/bin/rbenv install -v #{node['ruby']['version']}
       #{node['user']['homedir']}/.rbenv/bin/rbenv global #{node['ruby']['version']}
       EOH
end

execute 'rubygems-no-documentation' do
  command "echo \"gem: --no-document \" > #{node['user']['homedir']}/.gemrc"
end

gem_package 'bundler'

gem_package 'rails'

bash "rbenv_rehash" do
  user node['user']['credentials']['username']
  code <<-EOH
       rbenv rehash
       EOH
end