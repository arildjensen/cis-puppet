# Class cis::linuxcontrols::c0042
#
# Ensure rsyslog service is present.
#

class cis::linuxcontrols::c0042 {
  package {'rsyslog':
    ensure => installed,
  }
}
