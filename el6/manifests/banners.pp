class cis::el6:banners {
# CIS Control 8.1
# CIS Control 8.2
  file {'/etc/issue.net':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/issue.net",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
  file {'/etc/issue':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/issue.net",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
  file {'/etc/motd':
    source  => "puppet:///modules/cis-puppet/cis-rhel6/etc/issue.net",
    owner   => root,
    group   => root,
    mode    => 0644,
  } 

} # End class definition
