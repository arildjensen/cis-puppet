class cis::linuxcontrols::c0091 {
# CIS RHEL6 9.2.7
  if $f0009 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.7 (f0009)')
  }
}
