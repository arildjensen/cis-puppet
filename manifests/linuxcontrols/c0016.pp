# Class cis::linuxcontrols::c0016
#
# Ensure telnet server is not present on the system.
#

class cis::linuxcontrols::c0016 {
  package {'telnet-server':
    ensure => absent,
  }
}
