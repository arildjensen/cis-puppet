# Class cis::linuxcontrols::c0044
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0044 {
  file {'/var/log/messages':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
