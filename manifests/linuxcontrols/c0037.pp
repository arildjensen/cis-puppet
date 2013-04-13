class cis::linuxcontrols::c0037 {
# CIS RHEL6 Control 3.6
  package {'ntp':
    ensure => installed,
  }
  file {'/etc/ntp.conf':
    source  => 'puppet:///modules/cis/el6/etc/ntp.conf',
    owner   => root,
    group   => root,
    mode    => '0640',
    notify  => Package['ntp'],
  }
  file {'/etc/sysconfig/ntpd':
    source  => 'puppet:///modules/cis/el6/etc/sysconfig/ntpd',
    owner   => root,
    group   => root,
    mode    => '0640',
    notify  => Package['ntp'],
  }
}
