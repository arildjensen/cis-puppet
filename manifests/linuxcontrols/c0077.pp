# Class cis::linuxcontrols::c0077
#
# Expire inactive user accounts after 35 days.
#

class cis::linuxcontrols::c0077 {
  file {'/etc/default/useradd':
    source  => 'puppet:///modules/cis/el6/etc/default/useradd',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
