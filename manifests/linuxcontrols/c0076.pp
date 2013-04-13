class cis::linuxcontrols::c0076 {
# CIS RHEL6 Control 7.4
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
