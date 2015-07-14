# For setting GRUB passwords
class cis::linuxcontrols::c0006 ( $grub_password = fqdn_rand_string(30) ){
# CIS RHEL6 Control 1.4.1
# CIS RHEL6 Control 5.2.3
# TODO grub2 is not included in el6
#  file{'/etc/default/grub':
#   source  => "puppet:///modules/cis/el6/etc/default/grub",
# }

  case $::operatingsystem {
    'RedHat', 'CentOS': { }
    'Amazon': {
      file {'/etc/grub.conf':
        content => template('cis/awslinux/etc/grub.conf.erb'),
        owner   => root,
        group   => root,
        mode    => '0600',
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }
}
