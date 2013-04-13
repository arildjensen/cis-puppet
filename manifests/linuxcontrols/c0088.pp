class cis::linuxcontrols::c0088 {
# CIS RHEL6 9.2.4
  if $f0007 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.4 (f0007)')
  }
}
