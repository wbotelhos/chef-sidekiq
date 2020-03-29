description      'Configure Sidekiq service.'
license          'MIT'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer       'Washington Botelho'
maintainer_email 'wbotelhos@gmail.com'
name             'chef-sidekiq'
version          '0.1.0'

recipe 'chef-sidekiq::service', 'Installs service file.'

issues_url 'https://github.com/wbotelhos/chef-sidekiq/issues'
source_url 'https://github.com/wbotelhos/chef-sidekiq'

supports 'ubuntu'

chef_version '>= 12'
