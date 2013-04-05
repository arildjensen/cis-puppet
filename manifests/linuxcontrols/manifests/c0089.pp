class cis::linuxcontrols::c0089 {
# CIS RHEL6 9.2.5
  if $f0008 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.5 (f0008)')
  }
}
