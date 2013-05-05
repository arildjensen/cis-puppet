# Class cis::linuxcontrols::cc48
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0048 {
  file {'/var/log/spooler':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
