class cis::linuxcontrols::c0057 {
# CIS RHEL6 Control 6.1.3
  file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => 0600,
  }
}
