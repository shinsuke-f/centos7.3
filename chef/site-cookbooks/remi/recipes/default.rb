#
# Cookbook Name:: remi
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{Chef::Config[:file_cache_path]}/remi-release-7.rpm" do
  source "http://rpms.famillecollet.com/enterprise/remi-release-7.rpm"
  action :create
end
rpm_package "remi-release-7" do
  source "#{Chef::Config[:file_cache_path]}/remi-release-7.rpm"
  options "-Uvh"
  action :install
end
