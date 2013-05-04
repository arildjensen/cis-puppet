# Class cis::linuxcontrols::c0080
#
# Restrict access to the /etc/shadow file.
#

class cis::linuxcontrols::c0080 {
  file {'/etc/shadow':
    owner   => root,
    group   => root,
    mode    => '0000',
  }
}
