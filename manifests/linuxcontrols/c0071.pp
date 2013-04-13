class cis::linuxcontrols::c0071 {
# CIS RHEL6 Control 6.3.2
# CIS RHEL6 Control 6.3.3
# CIS RHEL6 Control 6.3.6
  file {'/etc/pam.d/system-auth':
    ensure  => link,
    target  => '/etc/pam.d/system-auth-ac',
  }
  file {'/etc/pam.d/system-auth-ac':
    source  => 'puppet:///modules/cis/el6/etc/pam.d/system-auth-ac',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
