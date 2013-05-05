# Class cis::linuxcontrols::c0047
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0047 {
  file {'/var/log/cron':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
