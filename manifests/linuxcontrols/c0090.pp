# Class cis::linuxcontrols:c0090
#
# Ensure root PATH integrity.
#

class cis::linuxcontrols::c0090 {
  file {'/root/.bash_logout':
    source  => 'puppet:///modules/cis/el6/root/bash_logout',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  file {'/root/.bash_profile':
    source  => 'puppet:///modules/cis/el6/root/bash_profile',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  file {'/root/.bashrc':
    source  => 'puppet:///modules/cis/el6/root/bashrc',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  file {'/root/.cshrc':
    source  => 'puppet:///modules/cis/el6/root/cshrc',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
  file {'/root/.tcshrc':
    source  => 'puppet:///modules/cis/el6/root/tcshrc',
    owner   => root,
    group   => root,
    mode    => '0600',
  }
}
