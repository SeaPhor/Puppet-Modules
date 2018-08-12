class ssh::config {
    file { '/etc/ssh/sshd_config':
      ensure   => present,
      owner    => 'root',
      group    => 'root',
      mode     => '0600',
      require  => Class["ssh::package"],
      notify   => Class["ssh::service"],
      content  => $my_authd ? {
        'adir'  => template('ssh/sshd_config-ad.erb'),
        'edir'  => template('ssh/sshd_config.erb'),
      }
    }
}
