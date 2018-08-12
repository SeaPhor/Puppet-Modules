class ssh::params {
    case $::architecture {
        'x86_64': {
            $my_subsys_sftp = 'Subsystem sftp /usr/lib64/ssh/sftp-server'
        }
        default: {
            $my_subsys_sftp = 'Subsystem sftp /usr/lib/ssh/sftp-server'
        }
    }
}
