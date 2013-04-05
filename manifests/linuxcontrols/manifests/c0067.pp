class cis::linuxcontrols::c0067 {
# CIS RHEL6 Control 6.2.1
# CIS RHEL6 Control 6.2.2
# CIS RHEL6 Control 6.2.3
# CIS RHEL6 Control 6.2.4
# CIS RHEL6 Control 6.2.5
# CIS RHEL6 Control 6.2.6
# CIS RHEL6 Control 6.2.7
# CIS RHEL6 Control 6.2.8
# CIS RHEL6 Control 6.2.9
# CIS RHEL6 Control 6.2.10
# CIS RHEL6 Control 6.2.11
# CIS RHEL6 Control 6.2.12
# CIS RHEL6 Control 6.2.13, please review sshd_config file as you may make changes
# while staying in compliance
# CIS RHEL6 Control 6.2.14

  package { 'openssh-server':
    ensure  => present,
    before  => File['/etc/ssh/sshd_config'],
  }
}
