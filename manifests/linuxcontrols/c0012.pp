# CIS RHEL6 Control 1.5.3 
class cis::linuxcontrols::c0012 (
  $grubpassword = $cis::grubpassword
  ) {
  if $grubpassword == undef {
    fail('No GRUB password defined.')
  } else {
    # add password line to grub.conf if not exists
    augeas { 'grub.conf/insert password':
      incl    => '/boot/grub/grub.conf',
      lens    => 'grub.lns',
      changes => [
        'ins password after default',
        "set password/encrypted ''",
        "set password '${grubpassword}'",
      ],
      onlyif  => 'match password size == 0',
    }
    # if password line already exists, update it
    augeas { 'grub.conf/update password':
      incl    => '/boot/grub/grub.conf',
      lens    => 'grub.lns',
      changes => [
        "set password '${grubpassword}'",
      ],
      require => Augeas['grub.conf/insert password'],
    }

  }
}
