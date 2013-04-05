class cis::linuxcontrols::c0010 {
# CIS RHEL6 Control 1.4.6
  if $f0000 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 1.4.6 (f0000)')
  }
}
