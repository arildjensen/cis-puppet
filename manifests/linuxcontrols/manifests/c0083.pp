class cis::linuxcontrols::c0083 {
# CIS RHEL6 9.1.11 
# Push a script that looks for unowned files out, add to nightly crontab, add
# a fact that reads the associated log file.
  file {'/usr/local/sbin/unowned_files.sh':
    source => "puppet:///modules/cis-puppet/linuxcontrols/scripts/f0002.sh",
    owner  => root,
    group  => root,
    mode   => 0700,
  }
  cron {'unowned_files.sh':
    command => '/usr/local/sbin/unowned_files.sh',
    user    => 'root',
    hour    => 4,
    minute  => 44,
  }
  if $f0002 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.1.11 (f0002)')
  }
}
