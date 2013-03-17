class cis::el6::network {

# See cis:el6:general for the following controls:
# CIS Control 4.1.1
# CIS Control 4.1.2
# CIS Control 4.2.1
# CIS Control 4.2.2
# CIS Control 4.2.3
# CIS Control 4.2.4
# CIS Control 4.2.5
# CIS Control 4.2.6
# CIS Control 4.2.7
# CIS Control 4.2.8

# CIS Control 4.5.3
  file {'/etc/hosts.allow':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}

# CIS Control 4.5.5
  file {'/etc/hosts.deny':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}	

# CIS Control 4.7
  package {'iptables':
  	ensure => installed
  	}
  service {'iptables':
  	enable => true
  	}
} # End class
