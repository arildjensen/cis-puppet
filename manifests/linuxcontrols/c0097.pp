class cis::linuxcontrols::c0097 {
# CIS RHEL6 9.2.13
  if $f0015 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.13 (f0015)')
  }
}
