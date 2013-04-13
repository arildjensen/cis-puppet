class cis::linuxcontrols::c0062 {
# CIS RHEL6 Control 6.1.8
  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
