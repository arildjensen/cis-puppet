class cis::linuxcontrols::c0049 {
  file {'/var/log/boot.log':
    owner => root,
    group => root,
    mode  => '0600',
    }
}
