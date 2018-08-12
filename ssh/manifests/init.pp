# == Class: ssh
#
#

class ssh {
   class { '::ssh::package': } ->
   class { '::ssh::params': } ->
   class { '::ssh::config': } -> 
   class { '::ssh::service': } ->
   Class['ssh']
}

