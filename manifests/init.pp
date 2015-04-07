# Class cis
#
# Top class for the Center for Internet Security benchmarks implementation in
# Puppet. See subclasses for benchmarks for specific systems or applications.
#

class cis (
  $logserver         = $cis::params::logserver,
  $ntpserver         = $cis::params::ntpserver,
  $cron_aide_check   = $cis::params::cron_aide_check,
  $grubpassword      = $cis::params::grubpassword,
  ) inherits cis::params {
}
