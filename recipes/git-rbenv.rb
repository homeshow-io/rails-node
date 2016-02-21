directory "#{node['user']['homedir']}/.rbenv" do
  owner "#{node['user']['credentials']['username']}"
  group "#{node['user']['credentials']['password']}"
  mode '0755'
end

git 'rbenv' do
  repository 'git://github.com/sstephenson/rbenv/rbenv.git'
  destination "#{node['user']['homedir']}/.rbenv"
  user node['user']['credentials']['username']
  group node['user']['credentials']['group']
  action :checkout
end

directory "#{node['user']['homedir']}/.rbenv/plugins" do
  owner "#{node['user']['credentials']['username']}"
  group "#{node['user']['credentials']['password']}"
  mode '0755'
end

git 'ruby-build' do
  repository 'git://github.com/sstephenson/ruby-build.git'
  destination "#{node['user']['homedir']}/.rbenv/plugins/ruby-build"
  user node['user']['credentials']['username']
  group node['user']['credentials']['group']
  action :checkout
end

execute 'export_path' do
  command "echo 'export PATH=\"$HOME/.rbenv/bin:$PATH\"' >> #{node['user']['credentials']['homedir']}/.bash_profile"
end

execute 'eval' do
  command "echo 'eval \"$(rbenv init -)\"' >> #{node['user']['credentials']['homedir']}/.bash_profile"
end

execute 'export_path2' do
  command "echo 'export PATH=\"$HOME/.rbenv/plugins/ruby-build/bin:$PATH\"' >> #{node['user']['credentials']['homedir']}/.bash_profile"
end