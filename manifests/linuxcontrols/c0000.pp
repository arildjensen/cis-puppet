class cis::linuxcontrols::c0000 {
# CIS RHEL6 Control 1.1.1
# CIS RHEL6 Control 1.1.2
# CIS RHEL6 Control 1.1.3
# CIS RHEL6 Control 1.1.4
# CIS RHEL6 Control 1.1.5
# CIS RHEL6 Control 1.1.6
# CIS RHEL6 Control 1.1.7
# CIS RHEL6 Control 1.1.8
# CIS RHEL6 Control 1.1.9
# CIS RHEL6 Control 1.1.10
# CIS RHEL6 Control 1.1.14
# CIS RHEL6 Control 1.1.15
# CIS RHEL6 Control 1.1.16
  file {'/etc/fstab':
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  mount {'/tmp':
    options => 'nodev,nosuid,noexec',
  }
  mount {'/var':
    options => 'nodev',
  }
  mount {'/var/log':
    options => 'nodev',
  }
  mount {'/var/log/audit':
    options => 'nodev',
  }
  mount {'/home':
    options => 'nodev',
  }
  mount {'/opt':
    options => 'nodev',
  }
  mount {'/dev/shm':
    options => 'nodev,nosuid,noexec',
  }
}
