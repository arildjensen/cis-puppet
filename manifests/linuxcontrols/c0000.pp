# Class cis::linuxcontrols::c0000
#
# Locks down the fstab file and enforces restrictive mount settings for the
# most commonly used mount points. Additional mounts should have the 'nodev'
# settings in most cases.
#
class cis::linuxcontrols::c0000 {
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
