# Class cis::linuxcontrols::c0070
#
# Set password hasing algorithm to use SHA-512
#

class cis::linuxcontrols::c0070 {
  file {'/etc/sysconfig/authconfig':
    source  => 'puppet:///modules/cis/el6/etc/sysconfig/authconfig',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
