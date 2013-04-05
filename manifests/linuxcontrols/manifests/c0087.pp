class cis::linuxcontrols::c0087 {
# CIS RHEL6 9.2.3
  if $f0006 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.3 (f0006)')
  }
}
