# Class cis::linuxcontrols::c0021
#
# Ensure NIS server is not present on the system.
#

class cis::linuxcontrols::c0021 {
  package {'ypserv':
    ensure => absent,
  }
}
