# Class cis::linuxcontrols::c0036
#
# Ensure DHCP (dynamic host configuration protocol) service is not present on
# the system.
#

class cis::linuxcontrols::c0036 {
  package {'dhcp':
    ensure => absent,
  }
}
