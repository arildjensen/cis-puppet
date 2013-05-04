# Class cis::linuxcontrols::c0066
#
# Restrict use of cron daemon to authorized users.
#

class cis::linuxcontrols::c0066 {
  file {'/etc/cron.allow':
    source  => 'puppet:///modules/cis/el6/etc/cron.allow',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
