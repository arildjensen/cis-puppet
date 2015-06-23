# Class cis::linuxcontrols::c0038
#
# Ensure mail transfer agent Postfix is configured for local-only mode.
#

class cis::linuxcontrols::c0038 {
  case $::operatingsystem {
    'RedHat': {
      file {'/etc/postfix/main.cf':
        source => 'puppet:///modules/cis/el6/etc/postfix/main.cf',
        owner  => root,
        group  => root,
        mode   => '0640',
      }
    }
    'Amazon': {
      file {'/etc/mail/sendmail.mc':
        source => 'puppet:///modules/cis/awslinux/etc/mail/sendmail.mc',
        owner  => root,
        group  => root,
        mode   => '0644',
        notify => Service['sendmail'],
      }

      service { 'sendmail':
        ensure => 'running',
        enable => true,
      }
    }
    default: { fail("ERROR: unsupported OS = ${::operatingsystem}") }
  }
}
