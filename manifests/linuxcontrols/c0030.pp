# Class cis::linuxcontrols::c0030
#
# Ensure daytime-stream service is not present on the system.
#

class cis::linuxcontrols::c0030 {
  package {'daytime-stream':
    ensure => absent,
  }
}
