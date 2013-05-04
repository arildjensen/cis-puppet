# Class cis::linuxcontrols::c0063
#
# Restrict access to the system cron job directory.
#

class cis::linuxcontrols::c0063 {
  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => '0700',
  }
}
