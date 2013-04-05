class cis::linuxcontrols::c0060 {
# CIS RHEL6 Control 6.1.6
  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => 0600,
  }
}
