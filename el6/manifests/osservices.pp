class cis::el6::services {

# CIS Control 2.1.1
  package {'telnet-server':
  	ensure => absent
  	}

# CIS Control 2.1.2
  package {'telnet':
  	ensure => absent
  	}

# CIS Control 2.1.3
  package {'rsh-server':
  	ensure => absent
  	}

# CIS Control 2.1.4
  package {'rsh':
  	ensure => absent
  	}

# CIS Control 2.1.5
  package {'ypbind':
  	ensure => absent
  	}

# CIS Control 2.1.6
  package {'ypserv':
  	ensure => absent
  	}

# CIS Control 2.1.7
  package {'tftp':
  	ensure => absent
  	}

# CIS Control 2.1.8
  package {'tftp-server':
  	ensure => absent
  	}

# CIS Control 2.1.9
  package {'talk':
  	ensure => absent
  	}

# CIS Control 2.1.10
  package {'talk-server':
  	ensure => absent
  	}

# CIS Control 2.1.11
  package {'xinetd':
  	ensure => absent
  	}

# CIS Control 2.1.12
  package {'chargen-dgram':
  	ensure => absent
  	}

# CIS Control 2.1.13
  package {'chargen-stream':
  	ensure => absent
  	}

# CIS Control 2.1.14
  package {'daytime-dgram':
  	ensure => absent
  	}

# CIS Control 2.1.15
  package {'daytime-stream':
  	ensure => absent
  	}

# CIS Control 2.1.16
  package {'echo-dgram':
  	ensure => absent
  	}

# CIS Control 2.1.17
  package {'echo-stream':
  	ensure => absent
  	}

# CIS Control 2.1.18
  package {'tcpmux-server':
  	ensure => absent
  	}

# CIS Control 3.2
  package {'xorg-x11-libs':
  	ensure => absent
  	}

# CIS Control 3.3
  package {'avahi-daemon':
  	ensure => absent
  	}

# CIS Control 3.5
  package {'dhcp':
  	ensure => absent
  	}

# CIS Control 3.6
  package {'ntp':
  	ensure => installed
  	}
  file {'/etc/ntp.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/ntp.conf",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}
  file {'/etc/sysconfig/ntpd':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysconfig/ntpd",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}

# CIS Control 3.16
  file {'/etc/postfix/main.cf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/postfix/main.cf",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}
} # End class
