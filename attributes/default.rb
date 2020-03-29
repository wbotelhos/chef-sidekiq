# frozen_string_literal: true

default['chef-sidekiq']['config']['working_directory'] = '/app'
default['chef-sidekiq']['service']['bundle']           = '/usr/bin/bundle'
default['chef-sidekiq']['service']['gem_home']         = '/usr/local/ruby/gem'
default['chef-sidekiq']['service']['group']            = nil
default['chef-sidekiq']['service']['kill']             = nil
default['chef-sidekiq']['service']['locale']           = 'en_US.UTF-8'
default['chef-sidekiq']['service']['name']             = 'sidekiq'
default['chef-sidekiq']['service']['type']             = 'simple'
default['chef-sidekiq']['service']['user']             = 'deploy'
default['chef-sidekiq']['service']['watchdogsec']      = nil
