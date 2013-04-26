# Class cis::linuxcontrols::c0008
#
# Ensure SETroubleshoot service is not present on the system.
#

class cis::linuxcontrols::c0008 {
  package {'setroubleshoot':
    ensure => absent,
  }
}
