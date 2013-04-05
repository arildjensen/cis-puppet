class cis::linuxcontrols::c0001 {
# CIS RHEL6 Control 1.1.17
  file {'/tmp':
  	mode    => 1777,
    enѕure  => directory,
  	}
}
