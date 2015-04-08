# Class cis::linuxcontrols::c0037
#
# Read in the ntp pool servers from cis::ntpserver which can come from hiera
# automatically, or passed through the cis parameterized class. If both are not
# set, the default from cis::params is used.
#

class cis::linuxcontrols::c0037 (
  $ntpserver = $cis::ntpserver
  ) {

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
    source => 'puppet:///modules/cis/el6/etc/sysconfig/ntpd',
    owner  => root,
    group  => root,
    mode   => '0640',
    notify => Package['ntp'],
  }
}
