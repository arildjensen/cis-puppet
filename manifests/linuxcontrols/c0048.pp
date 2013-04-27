# Class cis::linuxcontrols::cc48
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0048 {
  file {'/var/log/spooler':
    present => true,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
