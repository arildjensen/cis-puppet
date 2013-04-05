class cis::linuxcontrols::c0094 {
# CIS RHEL6 9.2.10
  if $f0012 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.10 (f0012)')
  }
}
