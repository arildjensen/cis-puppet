class cis::linuxcontrols::c0072 {
# CIS RHEL6 Control 6.5
  file {'/etc/pam.d/su':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/pam.d/su",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}
