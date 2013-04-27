# Class cis::linuxcontrols::c0031
#
# Ensure echo-dgram service is not present on the system.
#

class cis::linuxcontrols::c0031 {
  package {'echo-dgram':
    ensure => absent,
  }
}
