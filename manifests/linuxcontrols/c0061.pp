# Class cis::linuxcontrols::c061
#
# Restrict access to the weekly cron configuration file.
#

class cis::linuxcontrols::c0061 {
  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
