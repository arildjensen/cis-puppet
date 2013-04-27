# Class cis::linuxcontrols::c0035
#
# Ensure Avahi zeroconf service is not present on the system.
#

class cis::linuxcontrols::c0035 {
  package {'avahi-daemon':
    ensure => absent,
  }
}
