# Class cis::linuxcontrols::c0079
#
# Restrict access to the /etc/password file.
#

class cis::linuxcontrols::c0079 {
  file {'/etc/passwd':
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
