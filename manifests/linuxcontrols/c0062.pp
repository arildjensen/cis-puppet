# Class cis::linuxcontrols::c0062
#
# Restrict access to the con monthly configuration file.
#

class cis::linuxcontrols::c0062 {
  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
