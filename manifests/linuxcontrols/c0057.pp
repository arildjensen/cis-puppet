# Class cis::linuxcontrols::c0057
#
# Restrict access to the anacron configuration file.
#
class cis::linuxcontrols::c0057 {
  file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => '0600',
  }
}
