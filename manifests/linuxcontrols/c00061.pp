class cis::linuxcontrols::c00061 {
# CIS RHEL6 Control 5.2.3
# TODO grub2 is not included in el6

  augeas { 'grub.conf/audit':
    incl    => '/boot/grub/grub.conf',
    lens    => 'grub.lns',
    changes => [
      'set title[*]/kernel/audit 1',
    ],
  }
}
