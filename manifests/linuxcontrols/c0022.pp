# Class cis::linuxcontrols::c0022
#
# Ensure tftp client (trivial file transfer protocol) is not present on the
# system.
#

class cis::linuxcontrols::c0022 {
  package {'tftp':
    ensure => absent,
  }
}
