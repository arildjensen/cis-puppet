class cis::linuxcontrols::c0063 {
# CIS RHEL6 Control 6.1.9
  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => '0700',
  }
}
