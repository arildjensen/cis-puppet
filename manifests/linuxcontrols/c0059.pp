# Class cis::linuxcontrols::c0059
#
# Restrict access to the cron hourly configuration file.
#
class cis::linuxcontrols::c0059 {
  file {'/etc/cron.hourly':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
