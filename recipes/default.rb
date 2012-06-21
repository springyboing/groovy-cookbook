#
# Cookbook Name:: groovy
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "unzip" do
  action :install
end

ark "groovy" do
  url "#{node['groovy']['source_url']}"
  version "#{node['groovy']['version']}"
  # checksum  "#{node['groovy']['checksum']}"
  owner "#{node['groovy']['owner']}"
  append_env_path true
  action :install
end