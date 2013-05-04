# Class cis::linuxcontrols::c0058
#
# Restrict access to the cron configuration file.
#
class cis::linuxcontrols::c0058 {
  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
