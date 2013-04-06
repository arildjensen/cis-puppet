class cis::linuxcontrols::c0047 {
  file {'/var/log/cron':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
