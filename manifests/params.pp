# Private class to store (default) config parameters
class cis::params {
  $logserver       = 'log'
  $ntpserver       = [
    '0.pool.ntp.org',
    '1.pool.ntp.org',
    '2.pool.ntp.org',
    '3.pool.ntp.org', ]
  $aide_check_cron = { hour => '5', minute => '0', }
  # SHA512, password is changeme 
  $grubpassword    = '$6$So4O.dC.MAqTWTnC$ndHTLLJA8a3sSyilUVTdVYzCMsEqLru5HH8KtpKV1kNCMjJY9eJjfrB0AIcAtMSIOQF9dgdne46kOGo6OuuDB/'
}
