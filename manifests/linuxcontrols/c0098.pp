class cis::linuxcontrols::c0098 {
# CIS RHEL6 9.2.14
  if $f0016 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.14 (f0016)')
  }
}
