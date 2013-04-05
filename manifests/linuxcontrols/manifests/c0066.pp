class cis::linuxcontrols::c0066 {
  file {'/etc/cron.allow':
    source  => "puppet:///modules/cis-puppet/linuxcontrols/el6/etc/cron.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
}
