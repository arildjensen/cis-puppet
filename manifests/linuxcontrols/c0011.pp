# Class cis::linuxcontrols::c0011
#
# Ensure restrictive permissions on the Grub configuration file.
#

class cis::linuxcontrols::c0011 {
  case $operatingsystemmajrelease {
    6: {
      file {'/etc/grub.conf':
        owner => root,
        group => root,
        mode  => '0600',
      }
    }
    7: {
      file {'/boot/grub2/grub.cfg':
        owner => root,
        group => root,
        mode  => '0600',
      }
    }
  }
}
