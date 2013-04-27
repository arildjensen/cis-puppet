# Class cis::Linuxcontrols::c0032
#
# Ensure echo-stream service is not present on the system.
#

class cis::linuxcontrols::c0032 {
  package {'echo-stream':
    ensure => absent,
  }
}
