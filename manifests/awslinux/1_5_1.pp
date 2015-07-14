# Class cis::awslinux::1_5_1
#
# CIS Security Benchmark for RHEL7
#

class cis::awslinux::1_5_1   {
  case $::operatingsystem {
    'RedHat', 'CentOS': { include cis::linuxcontrols::c0011 }
    'Amazon': { include cis::linuxcontrols::c0006 }
    default: {}
  }
  
}
