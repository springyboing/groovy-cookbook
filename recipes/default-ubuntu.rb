#
# Cookbook Name:: groovy
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

case node["platform"]
when "ubuntu"
  #sudo apt-add-repository ppa:groovy-dev/groovy
  #sudo apt-get update
  #sudo apt-get install groovy
  package 'python-software-properties'
  apt_repository "groovy" do
    uri "http://ppa.launchpad.net/groovy-dev/groovy/ubuntu "
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "02A9EC29"
    action :add
    notifies :run, resources(:execute => "apt-get update"), :immediately
  end
end

package "groovy-#{node['groovy']['version']}" do
  action :install
end