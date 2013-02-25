# CIS_Red_Hat_Enterprise_Linux_6_Benchmark_v1.1.0
# Control 1.1.1

# Copyright (c) 2013 Secos Security. All Rights Reserved.
# info@secossecurity.com

# cis 1.1.1
# cis 1.1.2
# cis 1.1.3
# cis 1.1.4
# cis 1.1.5
# cis 1.1.6
# cis 1.1.7
# cis 1.1.8
# cis 1.1.9
# cis 1.1.10
# cis 1.1.14
# cis 1.1.15
# cis 1.1.16
file {'/etc/fstab':
	content => template("cis_rhel6/etc/fstab"),
	owner   => root,
	group   => root,
	mode    => 0600
	}

# cis 1.1.17
file {'/tmp':
	mode => 1777
	}

# cis 1.2.2
package {'gpg-pubkey':
	ensure => installed
	}

# cis 1.2.3
file {'/etc/yum.conf':
	content => template("cis_rhel6/etc/yum.conf")
	}

# cis 1.3.1
package {'aide':
	ensure => installed
	}

# cis 1.3.2
cron { aide-check:
	command => "/usr/sbin/aide --check",
	user    => root,
	hour    => 5,
	minute  => 0
} # Note: The command can be run at any time as long as it is regular

# cis 1.4.1
# cis 5.2.3
file{'/etc/default/grub':
	content => template("cis_rhel6/etc/default/grub")
	}

# cis 1.4.2
# cis 1.4.3
file {'/etc/selinux/config':
	content => template("cis_rhel6/etc/selinux/config")
	}

# cis 1.4.4
package {'setroubleshoot':
	ensure => absent
	}

# cis 1.4.5
package {'mcstrans':
	ensure => absent
	}

# cis 1.4.6 -- Not configurable via puppet

# cis 1.5.1
file {'/etc/grub.conf':
	owner: root,
	group: root,
	mode:  0600
	}

# cis 1.5.3 -- Not configurable via puppet

# cis 1.5.4
# cis 1.5.5
# cis 3.1
file {'/etc/sysconfig/init':
	template("cis_rhel6/etc/sysconfig/init")
	}

# cis 1.6.1
file {'/etc/security/limits.conf':
	template("cis_rhel6/etc/security/limits.conf")
	}

# cis 1.6.1
# cis 1.6.2
# cis 1.6.3
# cis 4.1.1
# cis 4.1.2
# cis 4.2.1
# cis 4.2.2
# cis 4.2.3
# cis 4.2.4
# cis 4.2.5
# cis 4.2.6
# cis 4.2.7
# cis 4.2.8
file {'/etc/sysctl.conf':
	template("cis_rhel6/etc/sysctl.conf")
	}
	
# cis 2.1.1
package {'telnet-server':
	ensure => absent
	}

# cis 2.1.2
package {'telnet':
	ensure => absent
	}

# cis 2.1.3
package {'rsh-server':
	ensure => absent
	}

# cis 2.1.4
package {'rsh':
	ensure => absent
	}

# cis 2.1.5
package {'ypbind':
	ensure => absent
	}

# cis 2.1.6
package {'ypserv':
	ensure => absent
	}

# cis 2.1.7
package {'tftp':
	ensure => absent
	}

# cis 2.1.8
package {'tftp-server':
	ensure => absent
	}

# cis 2.1.9
package {'talk':
	ensure => absent
	}

# cis 2.1.10
package {'talk-server':
	ensure => absent
	}

# cis 2.1.11
package {'xinetd':
	ensure => absent
	}

# cis 2.1.12
package {'chargen-dgram':
	ensure => absent
	}

# cis 2.1.13
package {'chargen-stream':
	ensure => absent
	}

# cis 2.1.14
package {'daytime-dgram':
	ensure => absent
	}

# cis 2.1.15
package {'daytime-stream':
	ensure => absent
	}

# cis 2.1.16
package {'echo-dgram':
	ensure => absent
	}

# cis 2.1.17
package {'echo-stream':
	ensure => absent
	}

# cis 2.1.18
package {'tcpmux-server':
	ensure => absent
	}

# cis 3.2
package {'xorg-x11-libs':
	ensure => absent
	}

# cis 3.3
package {'avahi-daemon':
	ensure => absent
	}

# cis 3.5
package {'dhcp':
	ensure => absent
	}

# cis 3.6
package {'ntp':
	ensure => installed
	}
file {'/etc/ntp.conf':
	template("cis_rhel6/etc/ntp.conf"),
	owner => root,
	group => root,
	mode  => 0640
	}
file {'/etc/sysconfig/ntpd':
	template("cis_rhel6/etc/sysconfig/ntpd"),
	owner => root,
	group => root,
	mode  => 0640
	}

# cis 3.16
file {'/etc/postfix/main.cf':
	template("cis_rhel6/etc/postfix/main.cf"),
	owner => root,
	group => root,
	mode  => 0640
	}

# cis 4.5.3
file {'/etc/hosts.allow':
	owner => root,
	group => root,
	mode  => 0644
	}

# cis 4.5.5
file {'/etc/hosts.deny':
	owner => root,
	group => root,
	mode  => 0644
	}	

# cis 4.7
package {'iptables':
	ensure => installed
	}
service {'iptables':
	enable => true
	}

# cis 5.1.1
package {'rsyslog':
	ensure => installed
	}

# cis 5.1.2
service {'rsyslog':
	enable => true
	}

# cis 5.1.4
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

# cis 5.1.5
file {'/etc/rsyslog.conf':
	content => template("cis_rhel6/etc/rsyslog.conf")
	}

# cis 5.2.1.3
file {'/etc/rsyslog.conf':
	content => template("cis_rhel6/etc/audit/auditd.conf")
	}

# cis 5.2.2
service {'auditd':
	enable => true
	}

# cis 5.2.4
# cis 5.2.5
# cis 5.2.6
# cis 5.2.7
# cis 5.2.8
# cis 5.2.9
# cis 5.2.10
# cis 5.2.11
# cis 5.2.13
# cis 5.2.14
# cis 5.2.15
# cis 5.2.16
file {'/etc/rsyslog.conf':
	content => template("cis_rhel6/etc/audit/audit.rules")
	}

# cis 5.2.12 -- Not doable with Puppet


