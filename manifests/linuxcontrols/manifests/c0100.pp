class cis::linuxcontrols::c0100 {
# CIS RHEL6 9.2.16
  if $f0018 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.16 (f0018)')
  }
}
