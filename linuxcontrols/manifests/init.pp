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

class cis::linuxcontrols::c0009 {
# CIS Control 1.4.6
# Facter f0000
  if $f0000 == 'fail' {
    warning('Node $fqdn failed CIS Control 1.4.6 (f0000)')
  }

class cis::linuxcontrols::c0010 {

# CIS Control 1.5.1
  file {'/etc/grub.conf':
  	owner: root,
  	group: root,
  	mode:  0600
  	}
}

# CIS Control 1.5.3 -- Not configurable via puppet

class cis::linuxcontrols::c0011 {

# CIS Control 1.5.4
# CIS Control 1.5.5
# CIS Control 3.1
  file {'/etc/sysconfig/init':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysconfig/init",
  	}
}

class cis::linuxcontrols::c0012 {

# CIS Control 1.6.1
  file {'/etc/security/limits.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/security/limits.conf",
  	}
}

class cis::linuxcontrols::c0013 {

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
class cis::linuxcontrols::c0014 {

# CIS Control 2.1.1
  package {'telnet-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0015 {

# CIS Control 2.1.2
  package {'telnet':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0016 {

# CIS Control 2.1.3
  package {'rsh-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0017 {

# CIS Control 2.1.4
  package {'rsh':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0018 {

# CIS Control 2.1.5
  package {'ypbind':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0019 {

# CIS Control 2.1.6
  package {'ypserv':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0020 {

# CIS Control 2.1.7
  package {'tftp':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0021 {

# CIS Control 2.1.8
  package {'tftp-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0022 {

# CIS Control 2.1.9
  package {'talk':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0023 {

# CIS Control 2.1.10
  package {'talk-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0024 {

# CIS Control 2.1.11
  package {'xinetd':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0025 {

# CIS Control 2.1.12
  package {'chargen-dgram':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0026 {

# CIS Control 2.1.13
  package {'chargen-stream':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0027 {

# CIS Control 2.1.14
  package {'daytime-dgram':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0028 {

# CIS Control 2.1.15
  package {'daytime-stream':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0029 {

# CIS Control 2.1.16
  package {'echo-dgram':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0030 {

# CIS Control 2.1.17
  package {'echo-stream':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0031 {

# CIS Control 2.1.18
  package {'tcpmux-server':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0032 {

# CIS Control 3.2
  package {'xorg-x11-libs':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0033 {

# CIS Control 3.3
  package {'avahi-daemon':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0034 {

# CIS Control 3.5
  package {'dhcp':
  	ensure => absent
  	}
}

class cis::linuxcontrols::c0035 {

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

class cis::linuxcontrols::c0036 {

# CIS Control 3.16
  file {'/etc/postfix/main.cf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/postfix/main.cf",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}
}

class cis::linuxcontrols::c0037 {

# CIS Control 4.5.3
  file {'/etc/hosts.allow':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}
}

class cis::linuxcontrols::c0038 {

# CIS Control 4.5.5
  file {'/etc/hosts.deny':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}	
}

class cis::linuxcontrols::c0039 {

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

class cis::linuxcontrols::c0040 {

# CIS Control 5.1.1
  package {'rsyslog':
  	ensure => installed
  	}
}

class cis::linuxcontrols::c0041 {

# CIS Control 5.1.2
  service {'rsyslog':
  	enable => true
  	}
}

class cis::linuxcontrols::c0042 {

# CIS Control 5.1.4
  file {'/var/log/messages':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0043 {
  file {'/var/log/secure':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0044 {
  file {'/var/log/maillog':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0045 {
  file {'/var/log/cron':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0046 {
  file {'/var/log/spooler':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0047 {
  file {'/var/log/boot.log':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
}

class cis::linuxcontrols::c0048 {

# CIS Control 5.1.5
  file {'/etc/rsyslog.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/rsyslog.conf",
    notify  => Service['rsyslog'],
  	}
}

class cis::linuxcontrols::c0049 {

# CIS Control 5.2.1.3
  file {'/etc/audit/auditd.conf':
  	source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/audit/auditd.conf",
    notify  => Service['auditd'],
  	}
}

class cis::linuxcontrols::c0050 {

# CIS Control 5.2.2
  service {'auditd':
  	enable => true
  	}
}

class cis::linuxcontrols::c0051 {

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

class cis::linuxcontrols::c0052 {
# CIS Control 5.2.12 -- TODO Find a way to cron an update to audit.rules with
# suid/guid entries.
}

class cis::linuxcontrols::c0053 {

# CIS Control 6.1.1
  package {'cronie-anacron':
    ensure => installed,
  }
}

class cis::linuxcontrols::c0054 {

# CIS Control 6.1.2
  service {'cron':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true, 
    require     => Package['cronie-anacron'],
  }
}

class cis::linuxcontrols::c0055 {

# CIS Control 6.1.3
  file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => 0600,
  }
}

class cis::linuxcontrols::c0056 {

# CIS Control 6.1.4
  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => 0600,
  }
}

class cis::linuxcontrols::c0057 {

# CIS Control 6.1.5
  file {'/etc/cron.hourly':
    owner => root,
    group => root,
    mode  => 0600,
  }
}

class cis::linuxcontrols::c0058 {

# CIS Control 6.1.6
  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => 0600,
  }
}

class cis::linuxcontrols::c0059 {

# CIS Control 6.1.7
  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => 0600,
  }
}

class cis::linuxcontrols::c0060 {

# CIS Control 6.1.8
  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => 0600,
  }
}

class cis::linuxcontrols::c0061 {

# CIS Control 6.1.9
  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => 0700,
  }
}

class cis::linuxcontrols::c0062 {

# CIS Control 6.1.10
# CIS Control 6.1.11
  file {'/etc/at.deny':
    ensure  => absent,
  }
}

class cis::linuxcontrols::c0063 {
  file {'/etc/at.allow':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/at.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}

class cis::linuxcontrols::c0064 {
  file {'/etc/cron.allow':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/cron.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}

class cis::linuxcontrols::c0065 {

# CIS Control 6.2.1
# CIS Control 6.2.2
# CIS Control 6.2.3
# CIS Control 6.2.4
# CIS Control 6.2.5
# CIS Control 6.2.6
# CIS Control 6.2.7
# CIS Control 6.2.8
# CIS Control 6.2.9
# CIS Control 6.2.10
# CIS Control 6.2.11
# CIS Control 6.2.12
# CIS Control 6.2.13, please review sshd_config file as you may make changes
# while staying in compliance
# CIS Control 6.2.14

  package { 'openssh-server':
    ensure  => present,
    before  => File['/etc/ssh/sshd_config'],
  }
}

class cis::linuxcontrols::c0066 {

  file { '/etc/ssh/sshd_config':
    ensure  => present,
    source  => "puppet:///modules/cis-puppet/el6/etc/ssh/sshd_config",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}

class cis::linuxcontrols::c0067 {

  service { 'sshd':
    ensure      => running,
    enabled     => true,
    hasrestart  => true,
    hasstatus   => true,
    subscribe   =>
    File['/etc/ssh/sshd_config'},
  }
}

class cis::linuxcontrols::c0068 {

# CIS Control 6.3.1
  file {'/etc/sysconfig/authconfig':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysconfig/authconfig",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}

class cis::linuxcontrols::c0069 {

# CIS Control 6.3.2
# CIS Control 6.3.3
# CIS Control 6.3.6
  file {'/etc/pam.d/system-auth':
    ensure  => link,
    target  => '/etc/pam.d/system-auth-ac',
  }
  file {'/etc/pam.d/system/auth-ac':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/pam.d/system-auth-ac",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}

class cis::linuxcontrols::c0070 {

# CIS Control 6.5

  file {'/etc/pam.d/su':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/pam.d/su",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}

class cis::linuxcontrols::c0071 {
# CIS Control 7.1.1
# CIS Control 7.1.2
# CIS Control 7.1.3
  file {'/etc/login.defs':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/etc/login.defs",
    owner   => root,
    group   => root,
    mode    => 0644,
  }

class cis::linuxcontrols::c0072 {
# CIS Control 7.2
  package {'grep':
    ensure  => present,
  }
  package {'gawk':
    ensure  => present,
  }
  if $f0001 == 'fail' {
    warning('Node $fqdn failed CIS Control 7.2 (f0001)')
  }
}

class cis::linuxcontrols::c0073 {
# CIS Control 7.3
  accounts::user {'root':
    uid => 0,
    gid => 0,
  }

class cis::linuxcontrols::c0074 {
# CIS Control 7.4
  file {'/etc/profile':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/profile",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
  file {'/etc/bashrc':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/bashrc",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
  file {'/etc/csh.cshrc':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/csh.cshrc",
    owner   => root,
    group   => root,
    mode    => 0644,
  }

class cis::linuxcontrols::c0075 {
# CIS Control 7.5
  file {'/etc/default/useradd':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/default/useradd",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}

class cis::linuxcontrols:c0076 {
# CIS Control 8.1
# CIS Control 8.2
  file {'/etc/issue.net':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/issue.net",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
  file {'/etc/issue':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/issue.net",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
  file {'/etc/motd':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/issue.net",
    owner   => root,
    group   => root,
    mode    => 0644,
  } 

}

class cis::linuxcontrols::c0077 {
# CIS 9.1.2
# CIS 9.1.6
  file {'/etc/passwd':
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}

class cis::linuxcontrols::c0078 {
# CIS 9.1.3
# CIS 9.1.7
  file {'/etc/shadow':
    owner   => root,
    group   => root,
    mode    => 0000,
  }
}

class cis::linuxcontrols::c0079 {
# CIS 9.1.4
# CIS 9.1.8
  file {'/etc/gshadow':
    owner   => root,
    group   => root,
    mode    => 0000,
  }
}

class cis::linuxcontrols::c0080 {
# CIS 9.1.5
# CIS 9.1.9
  file {'/etc/group':
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}

class cis::linuxcontrols::c0081 {
# CIS 9.1.11 
# Push a script that looks for unowned files out, add to nightly crontab, add
# a fact that reads the associated log file.
  package {'gawk':
    ensure  => present,
  }
  package {'coreutils':
    ensure  => present,
  }
  package {'findutils':
    ensure  => present:
  }
  file {'/usr/local/sbin/unowned_files.sh':
   source => "puppet:///modules/cis-puppet/linuxcontrols/scripts/unowned_files.sh",
   owner  => root,
   group  => root,
   mode   => 0700,
  }
  cron {'unowned_files.sh':
    command => '/usr/local/sbin/unowned_files.sh',
    user    => 'root',
    hour    => 4,
    minute  => 44,
  }
  if $f0002 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.1.11 (f0002)')
  }
}

class cis::linuxcontrols::c0082 {
# CIS 9.1.12 
# Same as c0081, except look for files belonging to non-existing groups
    package {'gawk':
      ensure  => present,
    }
    package {'coreutils':
      ensure  => present,
    }
    package {'findutils':
      ensure  => present:
    }
    file {'/usr/local/sbin/ungrouped_files.sh':
      source => "puppet:///modules/cis-puppet/linuxcontrols/scripts/ungrouped_files.sh",
      owner  => root,
      group  => root,
      mode   => 0700,
    }
    cron {'ungrouped_files.sh':
      command => '/usr/local/sbin/ungrouped_files.sh',
      user    => 'root',
      hour    => 3,
      minute  => 33,
    }
    if $f0003 == 'fail' {
      warning('Node $fqdn failed CIS Control 9.1.12 (f0003)')
  }
} 

class cis::linuxcontrols::c0083 {
# CIS 9.2.1
  if $f0004 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.1 (f0004)')
  }
}

class cis::linuxcontrols::c0084 {
# CIS 9.2.2
  if $f0005 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.2 (f0005)')
  }
}

class cis::linuxcontrols::c0085 {
# CIS 9.2.3
  if $f0006 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.3 (f0006)')
  }
}

class cis::linuxcontrols::c0086 {
# CIS 9.2.4
  if $f0007 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.4 (f0007)')
  }
}

class cis::linuxcontrols::c0087 {
# CIS 9.2.5
  if $f0008 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.5 (f0008)')
  }
}

class cis::linuxcontrols::c0088 {
# CIS 9.2.6
  file {'/root/.bash_logout':
    source  => "puppet:///modules/cis-puppet/el6/root/bash_logout",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
  file {'/root/.bash_profile':
    source  => "puppet:///modules/cis-puppet/el6/root/bash_profile",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
  file {'/root/.bashrc':
    source  => "puppet:///modules/cis-puppet/el6/root/bashrc",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
  file {'/root/.cshrc':
    source  => "puppet:///modules/cis-puppet/el6/root/cshrc",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
  file {'/root/.tcshrc':
    source  => "puppet:///modules/cis-puppet/el6/root/tcshrc",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}

class cis::linuxcontrols::0089 {
# CIS 9.2.7
  if $f0009 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.7 (f0009)')
  }
}

class cis::linuxcontrols::c0090 {
# CIS 9.2.8
  if $f0010 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.8 (f0010)')
  }
}

class cis::linuxcontrols::c0091 {
# CIS 9.2.9
  if $f0011 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.9 (f0011)')
  }
}

class cis::linuxcontrols::c0092 {
# CIS 9.2.10
  if $f0012 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.10 (f0012)')
  }
}

class cis::linuxcontrols::c0093 {
# CIS 9.2.11
  if $f0013 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.11 (f0013)')
  }
}

class cis::linuxcontrols::c0094 {
# CIS 9.2.12
  if $f0014 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.12 (f0014)')
  }
}

class cis::linuxcontrols::c0095 {
# CIS 9.2.13
  if $f0015 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.13 (f0015)')
  }
}

class cis::linuxcontrols::c0096 {
# CIS 9.2.14
  if $f0016 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.14 (f0016)')
  }
}

class cis::linuxcontrols::c0097 {
# CIS 9.2.15
  if $f0017 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.15 (f0017)')
  }
}

class cis::linuxcontrols::c0098 {
# CIS 9.2.16
  if $f0018 == 'fail' {
    warning('Node $fqdn failed CIS Control 9.2.16 (f0018)')
  }
}
