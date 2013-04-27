# Class cis::linuxcontrols::c0033
#
# Ensure tcpmux-server service is not present on the system.
#

class cis::linuxcontrols::c0033 {
  package {'tcpmux-server':
    ensure => absent,
  }
}
