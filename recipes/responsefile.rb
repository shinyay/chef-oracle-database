#
# Cookbook Name:: oracle-database
# Recipe:: responsefile
#
# Copyright (c) 2016 Shinya Yanagihara, All Rights Reserved.

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting compile phase"

#############################
# Create Directory for Response files
directory node['database']['response_file_dir'] do
  owner node['database']['owner']
  group node['database']['group']
  mode '0775'
end

#############################
# Crete Database Install Response file
template node['database']['response_file_install'] do
  source 'install_oracledb.rsp.erb'
  owner node['database']['owner']
  group node['database']['group']
  mode '0644'
end

#############################
# Create DBCA Response file
template node['database']['response_file_dbca'] do
  source 'dbca_oracledb.rsp.erb'
  owner node['database']['owner']
  group node['database']['group']
  mode '0644'
end

#############################
# Crete Database Uninstall Response file
template node['database']['response_file_uninstall'] do
  source 'deinstall_oracledb.rsp.erb'
  owner node['database']['owner']
  group node['database']['group']
  mode '0644'
end

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished compile phase"
