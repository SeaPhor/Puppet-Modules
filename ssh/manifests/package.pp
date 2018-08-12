class ssh::package {
   package { "openssh":
   ensure => present,
   }
}
