class cis::linuxcontrols::c0050 {
# CIS RHEL6 Control 5.1.5
  file {'/etc/rsyslog.conf':
    source  => 'puppet:///modules/cis/el6/etc/rsyslog.conf',
    owner   => root,
    group   => root,
    mode    => '0640',
    notify  => Service['rsyslog'],
    }
}
