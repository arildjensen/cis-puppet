# Class cis::linuxcontrols::c0049
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0049 {
  file {'/var/log/boot.log':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
    }
}
