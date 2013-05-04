# Class cis::linuxcontrols::c0076
#
# Set the default umask for users to 077.
#

class cis::linuxcontrols::c0076 {
  file {'/etc/profile':
    source  => 'puppet:///modules/cis/el6/etc/profile',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  file {'/etc/bashrc':
    source  => 'puppet:///modules/cis/el6/etc/bashrc',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  file {'/etc/csh.cshrc':
    source  => 'puppet:///modules/cis/el6/etc/csh.cshrc',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
