# Class cis::linuxcontrols::c0037
#
# Read in the ntp pool servers from hiera (cis::ntpserver)
# or, if not found, use the defaults per ntp.org. Then enforce the ntp
# configuration, using custom or default pool servers, and restart the ntp
# service if necessary.
#

class cis::linuxcontrols::c0037 {
  $ntpserver = hiera('cis::ntpserver',[ '0.pool.ntp.org', '1.pool.ntp.org',
      '2.pool.ntp.org', '3.pool.ntp.org' ])

  package {'ntp':
    ensure => installed,
  }

  file {'/etc/ntp.conf':
    content => template('cis/el6/etc/ntp.conf.erb'),
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
