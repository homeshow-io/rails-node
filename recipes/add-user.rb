execute 'logindefs' do
  command "echo \"CREATE_HOME yes\" >> /etc/login.defs" 
end

chef_gem 'ruby-shadow'

user node['user']['credentials']['username'] do
  comment     'Cameron Testerman'
  uid         node['user']['uid']
  home        node['user']['homedir']
  password    node['user']['credentials']['password']
  manage_home true
end

execute 'add_sudo_user' do
  command "sudo adduser #{node['user']['credentials']['username']} sudo"
end