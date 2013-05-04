# Class cis::linuxcontrols::c0073
#
# Set password expiration to 90 days, the minimum password change to 7 days,
# and ward of password expiration at 7 days, and ensure UIDs below 500 are
# only used by system accounts.
#

class cis::linuxcontrols::c0073 {
  file {'/etc/login.defs':
    source  => 'puppet:///modules/cis/el6/etc/login.defs',
    owner   => root,
    group   => root,
    mode    => '0644',
  }
}
