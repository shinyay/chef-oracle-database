#
# Cookbook Name:: oracle-database
# Recipe:: deinstall
#
# Copyright (c) 2016 Shinya Yanagihara, All Rights Reserved.

# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Starting compile phase"

##############################
# Uninstall Oracle Database
execute "uninstall oracle database" do
  user node['database']['user']
  group node['database']['group']
  command "#{node['database']['oracle_home']}/deinstall/deinstall -silent -paramfile #{node['database']['response_file_uninstall']}"
  only_if { Dir.exist?("#{node['database']['oracle_home']}/bin") }
end


# log  "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished execution phase"
puts "####{cookbook_name}::#{recipe_name} #{Time.now.inspect}: Finished compile phase"
