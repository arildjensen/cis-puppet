class cis::linuxcontrols::c0093 {
# CIS RHEL6 9.2.9
  if $f0011 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.9 (f0011)')
  }
}
