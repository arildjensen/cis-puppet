# Class cis::linuxcontrols::c0083
#
# Find un-owned files and directories. Runs as a cron job nightly.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0083 {
  file {'/usr/local/sbin/f0002.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0002.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
  }
  cron {'f0002.sh':
    command => '/usr/local/sbin/f0002.sh',
    user    => 'root',
    hour    => 4,
    minute  => 44,
  }
  if $f0002 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.1.11 (f0002)')
  }
}
