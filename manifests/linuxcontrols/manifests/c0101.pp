class cis::linuxcontrols::c0101 {
# CIS RHEL6 9.2.18
  if $f0019 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.18 (f0019)')
  }
}
