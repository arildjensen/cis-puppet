# Class cis::linuxcontrols::c0045
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0045 {
  file {'/var/log/secure':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
