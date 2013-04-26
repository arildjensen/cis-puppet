# Class cis::linuxcontrols::c0007
#
# Ensure SELinux is enabled on boot and to enforce the default targeted
# policy.
#

class cis::linuxcontrols::c0007 {
  file {'/etc/selinux/config':
    source  => 'puppet:///modules/cis/el6/etc/selinux/config',
    owner   => root,
    group   => root,
    mode    => '0640',
  }
}
