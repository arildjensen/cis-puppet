# Class cis::linuxcontrols::c0017
#
# Ensure telnet client is not present on the system.
#

class cis::linuxcontrols::c0017 {
  package {'telnet':
    ensure => absent,
  }
}
