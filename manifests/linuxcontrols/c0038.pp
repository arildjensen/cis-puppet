class cis::linuxcontrols::c0038 {
# CIS RHEL6 Control 3.16
  file {'/etc/postfix/main.cf':
    source  => 'puppet:///modules/cis/el6/etc/postfix/main.cf',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
