# Class cis::linuxcontrols::c0015
#
# Enforce the following settings:
# - Disable core dumps of SUID programs
# - Enable ExecShield
# - Enable randomized virtual memory region placement
#
# Enforce the following network settings:
# - Disable IP forwarding
# - Disable send packets redirects
# - Disable source routed packet acceptance
# - Disable ICMP redirect acceptance
# - Disable secure ICMP redirect acceptance
# - Log suspicious packets
# - Enable ignore broadcast requests
# - Enable bad error message protection
# - Enable RFC-recommended source route validation
# - Enable TCP SYN cookies
#

class cis::linuxcontrols::c0015 {
  file {'/etc/sysctl.conf':
    source  => 'puppet:///modules/cis/el6/etc/sysctl.conf',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
