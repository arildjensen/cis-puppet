class cis::el6::audit {

# See cis::el6::general for the following controls:
# CIS Control 5.2.3

# CIS Control 5.1.1
  package {'rsyslog':
  	ensure => installed
  	}

# CIS Control 5.1.2
  service {'rsyslog':
  	enable => true
  	}

# CIS Control 5.1.4
  file {'/var/log/messages':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/secure':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/maillog':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/cron':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/spooler':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/boot.log':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}

# CIS Control 5.1.5
  file {'/etc/rsyslog.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/rsyslog.conf",
  	}

# CIS Control 5.2.1.3
  file {'/etc/rsyslog.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/audit/auditd.conf",
  	}

# CIS Control 5.2.2
  service {'auditd':
  	enable => true
  	}

# CIS Control 5.2.4
# CIS Control 5.2.5
# CIS Control 5.2.6
# CIS Control 5.2.7
# CIS Control 5.2.8
# CIS Control 5.2.9
# CIS Control 5.2.10
# CIS Control 5.2.11
# CIS Control 5.2.13
# CIS Control 5.2.14
# CIS Control 5.2.15
# CIS Control 5.2.16
# CIS Control 5.2.17
# CIS Control 5.2.18
  file {'/etc/rsyslog.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/audit/audit.rules",
  	}

# CIS Control 5.2.12 -- Not doable with Puppet

} # End class
