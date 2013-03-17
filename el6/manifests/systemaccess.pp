class cis::el6::systemaccess {

# CIS Control 6.1.1
  package {'cronie-anacron':
    ensure => installed,
  }

# CIS Control 6.1.2
  service {'cron':
    enable => true,
  }

# CIS Control 6.1.3
  file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => 0600,
  }

# CIS Control 6.1.4
  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => 0600,
  }

# CIS Control 6.1.5
  file {'/etc/cron.hourly':
    owner => root,
    group => root,
    mode  => 0600,
  }

# CIS Control 6.1.6
  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => 0600,
  }

# CIS Control 6.1.7
  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => 0600,
  }

# CIS Control 6.1.8
  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => 0600,
  }

# CIS Control 6.1.9
  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => 0700,
  }

# CIS Control 6.1.10
# CIS Control 6.1.11
  file {'/etc/at.deny':
    ensure  => absent,
  }
  file {'/etc/at.allow':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/at.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
  file {'/etc/cron.allow':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/cron.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }

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

  file { '/etc/ssh/sshd_config':
    ensure  => present,
    source  => "puppet:///modules/cis-puppet/el6/etc/ssh/sshd_config",
    owner   => root,
    group   => root,
    mode    => 0600,
  }

  service { 'sshd':
    ensure      => running,
    enabled     => true,
    hasrestart  => true,
    hasstatus   => true,
    subscribe   =>
    File['/etc/ssh/sshd_config'},
  }

# CIS Control 6.3.1
  file {'/etc/sysconfig/authconfig':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/sysconfig/authconfig",
    owner   => root,
    group   => root,
    mode    => 0644,
  }

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

# CIS Control 6.5 TODO Get pam.d/su template

} # End class definition
