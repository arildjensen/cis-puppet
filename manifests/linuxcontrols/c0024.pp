# Class cis::linuxcontrols::c0024
#
# Ensure talk client is not present on the system.
#

class cis::linuxcontrols::c0024 {
  package {'talk':
    ensure => absent,
  }
}
