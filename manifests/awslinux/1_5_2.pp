# Class cis::awslinux::1_5_2
#
# CIS Security Benchmark for RHEL7
#

class cis::awslinux::1_5_2   {
  case $::operatingsystem {
    'Amazon': { include cis::linuxcontrols::c0006 }
    default: {}
  }
  
}
