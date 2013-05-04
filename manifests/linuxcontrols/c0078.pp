# Class cis::linuxcontrols::c0078
#
# Ensure a warning banner is presented upon login to the system.
#

class cis::linuxcontrols::c0078 {
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
