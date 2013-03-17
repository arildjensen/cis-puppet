class cis::el6::usersettings {

# CIS 9.1.2
# CIS 9.1.6
  file {'/etc/passwd':
    owner   => root,
    group   => root,
    mode    => 0644,
  }

# CIS 9.1.3
# CIS 9.1.7
  file {'/etc/shadow':
    owner   => root,
    group   => root,
    mode    => 0000,
  }

# CIS 9.1.4
# CIS 9.1.8
  file {'/etc/gshadow':
    owner   => root,
    group   => root,
    mode    => 0000,
  }

# CIS 9.1.5
# CIS 9.1.9
  file {'/etc/group':
    owner   => root,
    group   => root,
    mode    => 0644,
  }

# CIS 9.1.11 NOT IMPLEMENTED 
# CIS 9.1.12 NOT IMPLEMENTED

} # End class definition
