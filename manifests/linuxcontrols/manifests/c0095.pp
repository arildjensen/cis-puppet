class cis::linuxcontrols::c0095 {
# CIS RHEL6 9.2.11
  if $f0013 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.11 (f0013)')
  }
}
