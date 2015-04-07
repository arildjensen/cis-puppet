# Class cis::linuxcontrols::c0005
#
# Setup cron job to run AIDE check every 24 hours. Exact time to run is read 
# from $cis::aide_check_cron, which can come from hiera automatically, or
# passed through the cis:: parameterized class. If both are not set, the
# default from cis::params is used.
#

class cis::linuxcontrols::c0005 (
  $aide_check_cron = $cis::aide_check_cron
  ) {
  $aide_check_hour = $aide_check_cron[hour]
  $aide_check_min  = $aide_check_cron[minute]

  cron { 'aide-check':
    command => '/usr/sbin/aide --check',
    user    => root,
    hour    => $aide_check_hour,
    minute  => $aide_check_min,
    require => Package['aide'],
  }
}
