class cis::linuxcontrols::c0056 {
# CIS RHEL6 Control 6.1.2
  service {'cron':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true, 
    require     => Package['cronie-anacron'],
  }
}
