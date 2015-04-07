class cis::linuxcontrols::c0006 {
# CIS RHEL6 Control 1.4.1
# TODO grub2 is not included in el6

  augeas { 'grub.conf/selinux': 
    incl => '/boot/grub/grub.conf', 
    lens => 'grub.lns', 
    changes => [ 
      'rm title[*]/kernel/selinux', 
    ], 
    onlyif => "get title[*]/kernel/selinux == '0'",
  }

  augeas { 'grub.conf/enforcing': 
    incl => '/boot/grub/grub.conf', 
    lens => 'grub.lns', 
    changes => [ 
      'rm title[*]/kernel/enforcing', 
    ], 
    onlyif => "get title[*]/kernel/enforcing == '0'",
  }
}
