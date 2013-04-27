# Class cis::linuxcontrols::c0043
#
# Ensure rsyslog service is running.
#

class cis::linuxcontrols::c0043 {
  service {'rsyslog':
    enable => true,
  }
}
