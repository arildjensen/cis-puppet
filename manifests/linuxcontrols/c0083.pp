class cis::linuxcontrols::c0083 {
# CIS RHEL6 9.1.11
# Push a script that looks for unowned files out, add to nightly crontab, add
# a fact that reads the associated log file.
  file {'/usr/local/sbin/f0002.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0002.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
  }
  cron {'f0002.sh':
    command => '/usr/local/sbin/f0002.sh',
    owner   => 'root',
    hour    => 4,
    minute  => 44,
  }
  if $f0002 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.1.11 (f0002)')
  }
}
