# Class cis::linuxcontrols::c0003
#
# Ensure cryptographic verification of software packages using gpgcheck is
# enabled.
#
class cis::linuxcontrols::c0003 {
  augeas { 'Enable yum gpgcheck':
    context => '/files/etc/yum.conf/main',
    changes => 'set gpgcheck 1',
    incl    => '/etc/yum.conf',
    lens    => 'Yum.lns'
  }
}
