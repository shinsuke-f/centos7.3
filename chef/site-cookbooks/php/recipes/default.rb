#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w[
 
  php
  php-devel
  php-pear
  php-mbstring
  php-xml
  php-mcrypt
  php-gd
  php-pecl-xdebug
  php-opcache
  php-pecl-apcu
  php-fpm
  php-phpunit-PHPUnit
  php-mysqlnd
].each do |pkg|
  package "#{pkg}" do
    action :install
    options '--enablerepo=remi-php56'
  end
end

service 'httpd' do
  action [ :enable, :restart ]
end
