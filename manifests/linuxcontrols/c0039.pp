# Class cis::linuxcontrols::c0039
#
# Ensure hosts.allow is protected against unauthorized modifications.
#

class cis::linuxcontrols::c0039 {
  file {'/etc/hosts.allow':
    owner => root,
    group => root,
    mode  => '0644',
  }
}
