class cis::linuxcontrols::c0041 {
# CIS RHEL6 Control 4.7
  package {'iptables':
  	ensure  => installed,
    before  => Service['iptables'],
  	}

  service {'iptables':
    ensure      => running,
  	enabled     => true,
    hasrestart  => true,
    hasstatus   => true,
  	}
} 
