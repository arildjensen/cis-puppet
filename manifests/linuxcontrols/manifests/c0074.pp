class cis::linuxcontrols::c0074 {
# CIS RHEL6 Control 7.2
  if $f0001 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 7.2 (f0001)')
  }
}
