class cis::linuxcontrols::c0007 {
# CIS RHEL6 Control 1.4.2
# CIS RHEL6 Control 1.4.3
  file {'/etc/selinux/config':
    source  => 'puppet:///modules/cis/linuxcontrols/el6/etc/selinux/config',
    user    => root,
    group   => root,
    mode    => '0640',
  }
}
