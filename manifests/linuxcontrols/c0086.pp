class cis::linuxcontrols::c0086 {
# CIS RHEL6 9.2.2
  if $f0005 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.2 (f0005)')
  }
}
