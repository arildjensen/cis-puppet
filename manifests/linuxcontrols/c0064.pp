# Class cis::linuxcontrols::c0064
#
# Restrict use of at daemon to authorized users.
#

class cis::linuxcontrols::c0064 {
  file {'/etc/at.deny':
    ensure  => absent,
  }
}
