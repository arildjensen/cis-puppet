class cis::linuxcontrols::c0012 {
  # CIS RHEL6 Control 1.5.3 -- Not configurable via puppet
  case $::operatingsystem {
    'Amazon': { include cis::linuxcontrols::c0006 }
    default: {}
  }
}
