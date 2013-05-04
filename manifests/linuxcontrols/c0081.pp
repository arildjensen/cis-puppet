# Class cis::linuxcontrols::c0081
#
# Restrict access to the /etc/gshadow file.
#

class cis::linuxcontrols::c0081 {
  file {'/etc/gshadow':
    owner   => root,
    group   => root,
    mode    => '0000',
  }
}
