class cis::linuxcontrols::c0040 {
# CIS RHEL6 Control 4.5.5
  file {'/etc/hosts.deny':
    owner => root,
    group => root,
    mode  => '0644',
  }
}
