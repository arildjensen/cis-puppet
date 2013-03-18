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
class cis::linuxcontrols::c0013 {

# CIS Control 2.1.1
  package {'telnet-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0014 {

# CIS Control 2.1.2
  package {'telnet':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0015 {

# CIS Control 2.1.3
  package {'rsh-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0016 {

# CIS Control 2.1.4
  package {'rsh':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0017 {

# CIS Control 2.1.5
  package {'ypbind':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0018 {

# CIS Control 2.1.6
  package {'ypserv':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0019 {

# CIS Control 2.1.7
  package {'tftp':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0020 {

# CIS Control 2.1.8
  package {'tftp-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0021 {

# CIS Control 2.1.9
  package {'talk':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0022 {

# CIS Control 2.1.10
  package {'talk-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0023 {

# CIS Control 2.1.11
  package {'xinetd':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0024 {

# CIS Control 2.1.12
  package {'chargen-dgram':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0025 {

# CIS Control 2.1.13
  package {'chargen-stream':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0026 {

# CIS Control 2.1.14
  package {'daytime-dgram':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0027 {

# CIS Control 2.1.15
  package {'daytime-stream':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0028 {

# CIS Control 2.1.16
  package {'echo-dgram':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0029 {

# CIS Control 2.1.17
  package {'echo-stream':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0030 {

# CIS Control 2.1.18
  package {'tcpmux-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0031 {

# CIS Control 3.2
  package {'xorg-x11-libs':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0032 {

# CIS Control 3.3
  package {'avahi-daemon':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0033 {

# CIS Control 3.5
  package {'dhcp':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0034 {

# CIS Control 3.6
  package {'ntp':
  	ensure => installed
  	}
  file {'/etc/ntp.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/ntp.conf",
  	owner   => root,
  	group   => root,
  	mode    => 0640,
    notify  => Package['ntp'],
  	}
  file {'/etc/sysconfig/ntpd':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysconfig/ntpd",
  	owner   => root,
  	group   => root,
  	mode    => 0640
    notify  => Package['ntp'],
  	}
}

class cis::linuxcontrols::c0035 {

# CIS Control 3.16
  file {'/etc/postfix/main.cf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/postfix/main.cf",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}
}

class cis::linuxcontrols::c0036 {

# CIS Control 4.5.3
  file {'/etc/hosts.allow':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}
}

class cis::linuxcontrols::c0037 {

# CIS Control 4.5.5
  file {'/etc/hosts.deny':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}	
}

class cis::linuxcontrols::c0038 {

# CIS Control 4.7
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

class cis::linuxcontrols::c0039 {

# CIS Control 5.1.1
  package {'rsyslog':
  	ensure => installed
  	}
}

class cis::linuxcontrols::c0040 {

# CIS Control 5.1.2
  service {'rsyslog':
  	enable => true
  	}
}

class cis::linuxcontrols::c0041 {

# CIS Control 5.1.4
  file {'/var/log/messages':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0042 {
  file {'/var/log/secure':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0043 {
  file {'/var/log/maillog':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0044 {
  file {'/var/log/cron':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0045 {
  file {'/var/log/spooler':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0046 {
  file {'/var/log/boot.log':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0047 {

# CIS Control 5.1.5
  file {'/etc/rsyslog.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/rsyslog.conf",
    notify  => Service['rsyslog'],
  	}
}

class cis::linuxcontrols::c0048 {

# CIS Control 5.2.1.3
  file {'/etc/audit/auditd.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/audit/auditd.conf",
    notify  => Service['auditd'],
  	}
}

class cis::linuxcontrols::c0049 {

# CIS Control 5.2.2
  service {'auditd':
  	enable => true
  	}
}

class cis::linuxcontrols::c0050 {

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
  file {'/etc/audit/audit.rules':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/audit/audit.rules",
    notify  => Service['auditd'],
  	}
}

# CIS Control 5.2.12 -- Not doable with Puppet

}
