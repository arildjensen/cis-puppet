# Class cis::linuxcontrols::c0001
#
# Enforces restrictive permissions on temp directory.
#

class cis::linuxcontrols::c0001 {
  file {'/tmp':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '1777',
  }
}
