# Class cis::linuxcontrols::c0029
#
# Ensure daytime-dgram service is not present on the system.
#

class cis::linuxcontrols::c0029 {
  package {'daytime-dgram':
    ensure => absent,
  }
}
