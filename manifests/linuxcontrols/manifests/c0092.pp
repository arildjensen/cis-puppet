class cis::linuxcontrols::c0092 {
# CIS RHEL6 9.2.8
  if $f0010 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.8 (f0010)')
  }
}
