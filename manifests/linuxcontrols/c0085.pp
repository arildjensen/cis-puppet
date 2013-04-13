class cis::linuxcontrols::c0085 {
# CIS RHEL6 9.2.1
  if $f0004 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.1 (f0004)')
  }
}
