class cis::linuxcontrols::c0061 {
# CIS RHEL6 Control 6.1.7
  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
