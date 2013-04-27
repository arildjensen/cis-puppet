# Class cis::linuxcontrols::c0027
#
# Ensure chargen-dgram service is not present on the system.
#

class cis::linuxcontrols::c0027 {
  package {'chargen-dgram':
    ensure => absent,
  }
}
