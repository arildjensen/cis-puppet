class cis::linuxcontrols::c0000 {

# CIS Control 1.1.1
# CIS Control 1.1.2
# CIS Control 1.1.3
# CIS Control 1.1.4
# CIS Control 1.1.5
# CIS Control 1.1.6
# CIS Control 1.1.7
# CIS Control 1.1.8
# CIS Control 1.1.9
# CIS Control 1.1.10
# CIS Control 1.1.14
# CIS Control 1.1.15
# CIS Control 1.1.16
  file {'/etc/fstab':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/fstab",
  	owner   => root,
  	group   => root,
  	mode    => 0600
  	}
}

class cis::linuxcontrols::c0001 {

# CIS Control 1.1.17
  file {'/tmp':
  	mode => 1777
  	}
}

class cis::linuxcontrols::c0002 {

# CIS Control 1.2.2
  package {'gpg-pubkey':
  	ensure => installed
  	}
}

class cis::linuxcontrols::c0003 {

# CIS Control 1.2.3
  file {'/etc/yum.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/yum.conf",
  	}
}

class cis::linuxcontrols::c0004 {

# CIS Control 1.3.1
  package {'aide':
  	ensure => installed
  	}
}

class cis::linuxcontrols::c0005 {

# CIS Control 1.3.2
  cron { aide-check:
  	command => "/usr/sbin/aide --check",
  	user    => root,
  	hour    => 5,
  	minute  => 0,
    require => Package['aide'],
  } # Note: The command can be run at any time as long as it is regular
}

class cis::linuxcontrols::c0006 {

# CIS Control 1.4.1
# CIS Control 5.2.3
  file{'/etc/default/grub':
  	source  => "puppet:///modules/cis-security/cis-rhel6/etc/default/grub",
  	}
}

# CIS Control 1.4.2
# CIS Control 1.4.3
  file {'/etc/selinux/config':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/selinux/config",
  	}

class cis::linuxcontrols::c0007 {

# CIS Control 1.4.4
  package {'setroubleshoot':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0008 {
# CIS Control 1.4.5
  package {'mcstrans':
  	ensure => absent
  	}
}

# CIS Control 1.4.6 -- Not configurable via puppet.

class cis::linuxcontrols::c0009 {

# CIS Control 1.5.1
  file {'/etc/grub.conf':
  	owner: root,
  	group: root,
  	mode:  0600
  	}
}

# CIS Control 1.5.3 -- Not configurable via puppet

class cis::linuxcontrols::c0010 {

# CIS Control 1.5.4
# CIS Control 1.5.5
# CIS Control 3.1
  file {'/etc/sysconfig/init':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysconfig/init",
  	}
}

class cis::linuxcontrols::c0011 {

# CIS Control 1.6.1
  file {'/etc/security/limits.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/security/limits.conf",
  	}
}

class cis::linuxcontrols::c0012 {

# CIS Control 1.6.1
# CIS Control 1.6.2
# CIS Control 1.6.3
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
  file {'/etc/sysctl.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysctl.conf",
  	}
} 
