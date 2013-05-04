# Class cis::linuxcontrols::c0072
#
# Restrict access to the su command to only those in the group 'wheel'.
#

class cis::linuxcontrols::c0072 {
  file {'/etc/pam.d/su':
    source  => 'puppet:///modules/cis/el6/etc/pam.d/su',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
