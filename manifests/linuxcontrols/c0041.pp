# Class cis::linuxcontrols::c0041
#
# Ensure iptables firewall is present and running.
#

class cis::linuxcontrols::c0041 {
  case $::operatingsystem {
    'RedHat', 'CentOS': {
      case $::operatingsystemmajrelease {
        6: {
          package {'iptables':
            ensure => installed,
            before => Service['iptables'],
          }
          service {'iptables':
            ensure     => running,
            enable     => true,
            hasrestart => true,
            hasstatus  => true,
          }
        }
        7: {
          package {'firewalld':
            ensure => installed,
            before => Service['firewalld'],
          }
          service {'firewalld':
            ensure     => running,
            enable     => true,
            hasrestart => true,
            hasstatus  => true,
          }
        }
        default: {}
      }
    }
    'Amazon': {
      package { 'iptables':
        ensure => installed,
        before => Service['iptables'],
      }

      service { 'iptables':
        ensure => running,
        enable => true,
      }
    }
  }
}
