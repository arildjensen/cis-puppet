class cis::linuxcontrols::c0046 {
  file {'/var/log/maillog':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
