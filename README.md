# Sidekiq

[![Cookbook](http://img.shields.io/cookbook/v/chef-sidekiq.svg)](https://supermarket.chef.io/cookbooks/chef-sidekiq)
[![Patreon](https://img.shields.io/badge/donate-%3C3-brightgreen.svg)](https://www.patreon.com/wbotelhos)

Configure Sidekiq service.

## Requirements

#### Platforms

- Ubuntu 15.04+ (since we use Systemd)

## Service

|Attribute                                             |Default                |
|------------------------------------------------------|-----------------------|
|default['chef-sidekiq']['config']['working_directory']| '/app'                |
|default['chef-sidekiq']['service']['bundle']          | '/usr/bin/bundle'     |
|default['chef-sidekiq']['service']['gem_home']        | '/usr/local/ruby/gem' |
|default['chef-sidekiq']['service']['group']           | nil                   |
|default['chef-sidekiq']['service']['kill']            | nil                   |
|default['chef-sidekiq']['service']['locale']          | 'en_US.UTF-8'         |
|default['chef-sidekiq']['service']['name']            | 'sidekiq'             |
|default['chef-sidekiq']['service']['type']            | 'simple'              |
|default['chef-sidekiq']['service']['user']            | 'deploy'              |
|default['chef-sidekiq']['service']['watchdogsec']     | nil                   |

## Usage

#### Berkfile

```ruby
source 'https://supermarket.chef.io'

cookbook 'chef-sidekiq'
```

#### Node

Example how to override default configs:

```yml
{
  "chef-sidekiq": {
    "config": {
      "working_directory": "/var/www/app-name/current"
    },

    "service": {
      "watchdogsec": 5
    }
  },

  "run_list": [
    "recipe[chef-sidekiq]"
  ]
}
```

## Sidekiq documentation

https://github.com/mperham/sidekiq/wiki

## References

https://github.com/mperham/sidekiq/blob/master/examples/systemd/sidekiq.service
