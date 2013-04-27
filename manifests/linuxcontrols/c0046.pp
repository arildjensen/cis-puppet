# Class cis::linuxcontrols::c0046
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0046 {
  file {'/var/log/maillog':
    present => true,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
