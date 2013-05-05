# Class cis::linuxcontrols::c0050
#
# Read in the remote syslog server name from hiera (cis::logserver)
# or, if not found, use the default 'log'. Then enforce the rsyslog
# configuration, including setting the proper remote syslog server,
# and restart rsyslog service if necessary.
#

class cis::linuxcontrols::c0050 {
  $logserver = hiera('cis::logserver','log')

  file {'/etc/rsyslog.conf':
    content => template('cis/el6/etc/rsyslog.conf.erb'),
    owner   => root,
    group   => root,
    mode    => '0640',
    notify  => Service['rsyslog'],
    }
}
