# Class cis::linuxcontrols::c0055
#
# Ensure the anacron daemon is present.
#

class cis::linuxcontrols::c0055 {
  package {'cronie-anacron':
    ensure => installed,
  }
}
