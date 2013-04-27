# Class cis::linuxcontrols::c0038
#
# Ensure mail transfer agent Postfix is configured for local-only mode.
#

class cis::linuxcontrols::c0038 {
  file {'/etc/postfix/main.cf':
    source  => 'puppet:///modules/cis/el6/etc/postfix/main.cf',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
