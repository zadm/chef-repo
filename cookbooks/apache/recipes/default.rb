#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
require "pp"
package 'httpd' do 
	action :install #you can remove this line because by default install action is executed 
end

service 'httpd' do
	action [:start, :enable]
end
template '/var/www/html/index.html' do
	source 'index.html.erb'
	mode '0644'
end
search('Users','*:*').each do |user_data_bag|
		user user_data_bag['id'] do 
		comment user_data_bag["comment"]
		uid user_data_bag["uid"]
		gid user_data_bag["gid"]
		home user_data_bag["home"]
		shell user_data_bag["shell"]
	end
	
end
#pp node.debug_value('apache' , 'company') this line is to find where an attribute is declared (file,ohai,)