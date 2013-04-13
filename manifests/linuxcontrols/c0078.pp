class cis::linuxcontrols::c0078 {
# CIS RHEL6 Control 8.1
# CIS RHEL6 Control 8.2
  file {'/etc/issue.net':
    source  => 'puppet:///modules/cis/el6/etc/issue.net',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  file {'/etc/issue':
    source  => 'puppet:///modules/cis/el6/etc/issue.net',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  file {'/etc/motd':
    source  => 'puppet:///modules/cis/el6/etc/issue.net',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
