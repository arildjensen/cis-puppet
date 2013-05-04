# Class cis::linuxcontrols:c0084
#
# Find un-grouped files and directories.
#
# This is a reported, not enforced, control item.
#

class cis::linuxcontrols::c0084 {
    file {'/usr/local/sbin/f0003.sh':
      source => 'puppet:///modules/cis/linuxcontrols/scripts/f0003.sh',
      owner  => root,
      group  => root,
      mode   => '0700',
    }
    cron {'f0003.sh':
      command => '/usr/local/sbin/f0003.sh',
      user    => 'root',
      hour    => 3,
      minute  => 33,
    }
    if $f0003 == 'fail' {
      warning('Node $fqdn failed CIS RHEL6 Control 9.1.12 (f0003)')
  }
}
