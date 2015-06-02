# Class cis::linuxcontrols::c0004
#
# Ensure the AIDE (Advanced Intrusion Detection Environment) software package
# is installed.
#

class cis::linuxcontrols::c0004 {
  package {'aide':
    ensure => installed,
  }

  case $::operatingsystem {
    'Amazon': {
      exec { 'aide-initialize':
        command => "/usr/sbin/aide --init -B 'database_out=file:/var/lib/aide/aide.db.gz'",
        user    => 'root',
        creates => '/var/lib/aide/aide.db.gz',
        require => Package['aide'],
      }

      # file { '/etc/sysconfig/prelink':
      #   content => 'PRELINKING=no',
      #   ensure  => absent,
      #   owner   => 'root',
      #   mode    => '600',
      # }

      # exec { 'aide-prelink':
      #   command => "/usr/sbin/prelink -ua",
      #   user    => 'root',
      #   creates => '/var/lib/aide/aide.db.gz',
      #   require => [ Exec['aide-initialize'], File['/etc/sysconfig/prelink'] ],
      # }
    }
  }
}
