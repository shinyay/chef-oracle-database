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
  command "su #{node['database']['user']} -l -c '#{node['database']['runinstaller_path']} #{node['database']['ignore_sysprereq']} -waitforcompletion -silent -responseFile #{node['database']['response_file_install']}'"
  returns [0, 6]
  not_if { Dir.exist?("#{node['database']['oracle_home']}/bin") }
end

execute "root.sh rdbms" do
  command "#{node['database']['oracle_home']}/root.sh"
end

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished compile phase"
