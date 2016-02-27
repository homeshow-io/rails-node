gem_package 'pg'

execute 'create_role' do
  command "su - postgres -c \"create role myapp with createdb login password 'password1';\" "  
end

