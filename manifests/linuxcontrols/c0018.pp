# Class cis::linuxcontrols::c0018
#
# Ensure rsh server is not present on the system.
#

class cis::linuxcontrols::c0018 {
  package {'rsh-server':
    ensure => absent,
  }
}
