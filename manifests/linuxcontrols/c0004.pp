# Class cis::linuxcontrols::c0004
#
# Ensure the AIDE (Advanced Intrusion Detection Environment) software package
# is installed.
#

class cis::linuxcontrols::c0004 {
  package {'aide':
    ensure => installed,
  }
}
