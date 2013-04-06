class cis::linuxcontrols::c0039 {
# CIS RHEL6 Control 4.5.3
  file {'/etc/hosts.allow':
    owner => root,
    group => root,
    mode  => '0644',
  }
}
