# frozen_string_literal: true

service_name = node['chef-sidekiq']['service']['name']

template "/etc/systemd/system/#{service_name}.service" do
  mode   0o644
  source 'etc/systemd/system/service.erb'

  variables(
    bundle:            node['chef-sidekiq']['service']['bundle'],
    gem_home:          node['chef-sidekiq']['service']['gem_home'],
    group:             node['chef-sidekiq']['service']['group'],
    kill:              node['chef-sidekiq']['service']['kill'],
    locale:            node['chef-sidekiq']['service']['locale'],
    type:              node['chef-sidekiq']['service']['type'],
    user:              node['chef-sidekiq']['service']['user'],
    watchdogsec:       node['chef-sidekiq']['service']['watchdogsec'],
    working_directory: node['chef-sidekiq']['config']['working_directory']
  )

  notifies :run, "execute[daemon-reload for #{service_name}]", :immediately
end

execute "daemon-reload for #{service_name}" do
  command 'systemctl daemon-reload'

  action :nothing
end

service service_name do
  supports reload: true, restart: true, status: true

  action %i[enable restart]
end
