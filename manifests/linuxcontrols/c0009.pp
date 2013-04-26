# Class cis::linuxcontrols::c0009
#
# Ensure MCS Translation Service is not present on the system.
#

class cis::linuxcontrols::c0009 {
  package {'mcstrans':
    ensure => absent,
  }
}
