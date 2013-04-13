class cis::linuxcontrols::c0104 {
# CIS RHEL6 9.2.21
  if $f0022 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.21 (f0022)')
  }
}
