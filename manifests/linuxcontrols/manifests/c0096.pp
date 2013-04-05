class cis::linuxcontrols::c0096 {
# CIS RHEL6 9.2.12
  if $f0014 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.12 (f0014)')
  }
}
