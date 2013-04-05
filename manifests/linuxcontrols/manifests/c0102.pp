class cis::linuxcontrols::c0102 {
# CIS RHEL6 9.2.19
  if $f0020 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.19 (f0020)')
  }
}
