class cis::rhel6::sshd {

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
  # CIS Control 6.2.13, requires editing of sshd_config with
  # environment-specific deny/allow list of users.
  # CIS Control 6.2.14

  package { 'openssh-server':
    ensure  => present,
    before  => File['/etc/ssh/sshd_config'],
  }

  file { '/etc/ssh/sshd_config':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/ssh/sshd_config",
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
