#
# Cookbook:: ubuntu
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2'

service 'apache2' do
  supports status: true
  action [:enable, :start]
end


template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end
