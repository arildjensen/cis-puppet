# Class cis::linuxcontrols::c0026
#
# Ensure xinetd (extended internet daemon) is not present on the system.
#

class cis::linuxcontrols::c0026 {
  package {'xinetd':
    ensure => absent,
  }
}
