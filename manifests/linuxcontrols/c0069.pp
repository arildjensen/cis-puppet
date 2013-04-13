class cis::linuxcontrols::c0069 {
  service { 'sshd':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true,
    subscribe   => File['/etc/ssh/sshd_config'],
  }
}
