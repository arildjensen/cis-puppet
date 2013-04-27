# Class cis::linuxcontrols::c0041
#
# Ensure iptables firewall is present and running.
#

class cis::linuxcontrols::c0041 {
  package {'iptables':
    ensure  => installed,
    before  => Service['iptables'],
  }
  service {'iptables':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true,
  }
}
