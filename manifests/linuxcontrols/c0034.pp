# Class cis;:linuxcontrols::c0034
#
# Ensure X Windows is not present on the system.
#

class cis::linuxcontrols::c0034 {
  package {'xorg-x11-libs':
    ensure => absent,
  }
}
