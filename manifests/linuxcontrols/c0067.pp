# Class cis::linuxcontrols::c0067
#
# Restrict secure shell daemon (sshd) with the following settings:
# - Use SSH protocol 2 only
# - Set LogLevel to INFO
# - Disable SSH X11 forwarding
# - Set SSH MaxAuthTries to 4
# - Set SSH IgnoreRhosts to Yes
# - Set SSH HostbasedAuthentication to No
# - Disable SSH root login
# - Set SSH PermitEmptyPasswords to No
# - Set SSH PermitUserEnvironment to No
# - Restrict use of ciphers to RFC4344-recommended and AES-only
# - Set SSH IdleTimeOut interval to 5 minutes (300 seconds)
# - Deny system accounts access (review sshd_config for allow/deny list)
# - Use /etc/hosts.net banner
#

class cis::linuxcontrols::c0067 {
  package { 'openssh-server':
    ensure  => present,
    before  => File['/etc/ssh/sshd_config'],
  }
}
