class cis::linuxcontrols::c0077 {
# CIS RHEL6 Control 7.5
  file {'/etc/default/useradd':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/default/useradd",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}
