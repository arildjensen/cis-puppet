class cis::linuxcontrols::c0084 {
# CIS RHEL6 9.1.12
# Same as c0081, except look for files belonging to non-existing groups
    file {'/usr/local/sbin/ungrouped_files.sh':
      source => 'puppet:///modules/cis/linuxcontrols/scripts/f0003.sh',
      owner  => root,
      group  => root,
      mode   => '0700',
    }
    cron {'f0003.sh':
      command => '/usr/local/sbin/f0003.sh',
      owner   => 'root',
      hour    => 3,
      minute  => 33,
    }
    if $f0003 == 'fail' {
      warning('Node $fqdn failed CIS RHEL6 Control 9.1.12 (f0003)')
  }
}
