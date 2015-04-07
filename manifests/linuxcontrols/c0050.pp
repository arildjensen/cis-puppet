# Class cis::linuxcontrols::c0050
#
# Read in the remote syslog server name from cis::logserver
# which can come from hiera automatically, or passed through the cis::
# parameterized class. If both are not set, the default from cis::params is
# used.

class cis::linuxcontrols::c0050 (
  $logserver = $cis::logserver
  ) {

  file {'/etc/rsyslog.conf':
    content => template('cis/el6/etc/rsyslog.conf.erb'),
    owner   => root,
    group   => root,
    mode    => '0640',
    notify  => Service['rsyslog'],
    }
}
