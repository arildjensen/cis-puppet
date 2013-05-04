# Class cis::linuxcontrols::c0082
#
# Restrict access to the /etc/group file.
#

class cis::linuxcontrols::c0082 {
  file {'/etc/group':
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
