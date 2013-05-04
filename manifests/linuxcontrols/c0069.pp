# Class cis::linuxcontrols::c0069
#
# Ensure the SSH daemon is enabled and running.
#

class cis::linuxcontrols::c0069 {
  service { 'sshd':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true,
    subscribe   => File['/etc/ssh/sshd_config'],
  }
}
