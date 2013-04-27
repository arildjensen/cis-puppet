# Class cis::linuxcontrols::c0025
#
# Ensure talk service is not present on the system.
#

class cis::linuxcontrols::c0025 {
  package {'talk-server':
    ensure => absent,
  }
}
