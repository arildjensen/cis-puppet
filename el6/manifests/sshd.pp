class cis::el6::sshd {

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
    subscribe   => File['/etc/ssh/sshd_config'},
  }

} # End class definition
