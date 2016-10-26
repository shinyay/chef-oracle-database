#
# Cookbook Name:: oracle-database
# Recipe:: netca
#
# Copyright (c) 2016 Shinya Yanagihara, All Rights Reserved.

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting compile phase"

##############################
# Configure Oracle Database by NETCA
execute "netca oracle database" do
  user node['database']['user']
  group node['database']['group']
  command "#{node['database']['oracle_home']}/bin/netca -silent -responseFile #{node['database']['response_file_netca']}"
end

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished compile phase"
