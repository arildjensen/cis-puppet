# Class cis::linuxcontrols::c0071
#
# Require use of pam_cracklib, strong passwords using pam_passwdqc, limit
# password reuse to the last 5, and restrict access to changing any of these
# settings.
#

class cis::linuxcontrols::c0071 {
  file {'/etc/pam.d/system-auth':
    ensure  => link,
    target  => '/etc/pam.d/system-auth-ac',
  }
  file {'/etc/pam.d/system-auth-ac':
    source  => 'puppet:///modules/cis/el6/etc/pam.d/system-auth-ac',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
