execute 'logindefs' do
  command "echo \"CREATE_HOME yes\" >> /etc/login.defs" 
end

user node['user']['credentials']['username'] do
  comment 'Cameron Testerman'
  uid node['user']['uid']
  home node['user']['homedir']
  password node['user']['credentials']['password']
  manage_home true
end