class cis::linuxcontrols::c0075 {
# CIS RHEL6 Control 7.3
  accounts::user {'root':
    uid => 0,
    gid => 0,
  }
}
