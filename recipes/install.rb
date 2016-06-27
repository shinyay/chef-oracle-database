#
# Cookbook Name:: oracle-database
# Recipe:: install
#
# Copyright (c) 2016 Shinya Yanagihara, All Rights Reserved.

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting compile phase"

##############################
# Install Oracle Database
execute "install oracle database" do
  #user node['database']['user']
  #group node['database']['group']
  command "su oracle -l -c '#{node['database']['runinstaller_path']} #{node['database']['ignore_sysprereq']} -waitforcompletion -silent -responseFile #{node['database']['response_file_install']}'"
  #environment(
  #  'USER' => node['database']['user'],
  #  'HOME' => node['database']['user_home'],
  #  'ORACLE_BASE' => node['database']['oracle_base'],
  #  'ORACLE_HOME' => node['database']['oracle_home']
  #) 
end

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished compile phase"
