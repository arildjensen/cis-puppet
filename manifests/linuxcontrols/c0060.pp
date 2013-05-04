# Class cis::linuxcontrols::c0060
#
# Restrict access to the cron daily configuration file
#

class cis::linuxcontrols::c0060 {
  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
