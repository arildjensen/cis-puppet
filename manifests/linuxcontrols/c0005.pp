# Class cis::linuxcontrols::c0005
#
# Setup cron job to run AIDE check every 24 hours. Exact time to run is read
# from hiera (cis::aide_check_cron). If not set the default of 5 AM is used.
#

class cis::linuxcontrols::c0005 {
  $aide_check_cron = hiera('cis::aide_check_cron',{hour=>5,minute=>0})
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
