# Class cis::linuxcontrols::c0028
#
# Ensure chargen-stream service is not present on the system.
#

class cis::linuxcontrols::c0028 {
  package {'chargen-stream':
    ensure => absent,
  }
}
