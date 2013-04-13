class cis::linuxcontrols::c0005 {
# CIS RHEL6 Control 1.3.2
  cron { 'aide-check':
    command => '/usr/sbin/aide --check',
    user    => root,
    hour    => 5,
    minute  => 0,
    require => Package['aide'],
  } # Note: The command can be run at any time as long as it is regular
}
