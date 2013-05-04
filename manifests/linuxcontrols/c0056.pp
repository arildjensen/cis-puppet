# Class cis::linuxcontrols::c0056
#
# Ensure the cron daemon is enabled.
#
class cis::linuxcontrols::c0056 {
  service {'crond':
    ensure      => running,
    enable      => true,
    hasrestart  => true,
    hasstatus   => true,
    require     => Package['cronie-anacron'],
  }
}
