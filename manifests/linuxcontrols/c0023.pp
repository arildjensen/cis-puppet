# Class cis::linuxcontrols::c0023
#
# Ensure tftp server (trivial file transfer protocol) is not present on the
# system.
#

class cis::linuxcontrols::c0023 {
  package {'tftp-server':
    ensure => absent,
  }
}
