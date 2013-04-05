class cis::linuxcontrols::c0059 {
# CIS RHEL6 Control 6.1.5
  file {'/etc/cron.hourly':
    owner => root,
    group => root,
    mode  => 0600,
  }
}
