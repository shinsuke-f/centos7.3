#
# Cookbook Name:: epel
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_package "epel-release" do
 action :install
end

