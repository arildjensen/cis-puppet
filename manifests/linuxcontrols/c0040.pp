# Class cis::linuxcontrols::c0040
#
# Ensure hosts.deny is protected against unauthorized modifications.
#

class cis::linuxcontrols::c0040 {
  file {'/etc/hosts.deny':
    owner => root,
    group => root,
    mode  => '0644',
  }
}
