class cis::linuxcontrols::c0058 {
# CIS RHEL6 Control 6.1.4
  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
