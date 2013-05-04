# Class cis::linuxcontrols::c0065
#
# Restrict use of at daemon to authorized users.
#

class cis::linuxcontrols::c0065 {
  file {'/etc/at.allow':
    source  => 'puppet:///modules/cis/el6/etc/at.allow',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
