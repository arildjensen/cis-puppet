class cis::linuxcontrols::c0103 {
# CIS RHEL6 9.2.20
  if $f0021 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.20 (f0021)')
  }
}
