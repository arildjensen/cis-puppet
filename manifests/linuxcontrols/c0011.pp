# Class cis::linuxcontrols::c0011
#
# Ensure restrictive permissions on the Grub configuration file.
#

class cis::linuxcontrols::c0011 {
  file {'/etc/grub.conf':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
