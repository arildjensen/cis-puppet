# Class cis::awslinux::1_6_2
#
# CIS Security Benchmark for RHEL7
#

class cis::awslinux::1_6_2   {
  case $::operatingsystem {
    'RedHat', 'CentOS': { include cis::linuxcontrols::c0015 }
    'Amazon': { include cis::linuxcontrols::c0014 }
    default: {}
  }
}
