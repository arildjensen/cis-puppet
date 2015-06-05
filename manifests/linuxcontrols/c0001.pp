# Class cis::linuxcontrols::c0001
#
# Enforces restrictive permissions on temp directory.
#

class cis::linuxcontrols::c0001 {
  file {'/tmp':
    ensure => directory,
    owner  => root,
    group  => root,
    mode   => '1777',
  }

  if $::operatingsystem == 'Amazon' {
    exec { 'cis-1.1.17':
      command => "df --local -P | awk {'if (NR!=1) print \$6'} | xargs -I '{}' find '{}' -xdev -type d \\( -perm -0002 -a ! -perm -1000 \\) 2>/dev/null | xargs chmod a+t",
      unless  => "test -z $(df --local -P | awk {'if (NR!=1) print \$6'} | xargs -I '{}' find '{}' -xdev -type d \\( -perm -0002 -a ! -perm -1000 \\) 2>/dev/null )",
      path    => "/usr/bin:/bin",
    }
  }
}
