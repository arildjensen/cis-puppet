# Class cis::linuxcontrols::c0047
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0047 {
  file {'/var/log/cron':
    present => true,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
