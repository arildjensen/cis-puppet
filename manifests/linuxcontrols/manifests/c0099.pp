class cis::linuxcontrols::c0099 {
# CIS RHEL6 9.2.15
  if $f0017 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.15 (f0017)')
  }
}
