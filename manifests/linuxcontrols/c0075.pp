# Class cis::linuxcontrol::c0075
#
# Ensure the default group for user 'root' is GID 0.
#

class cis::linuxcontrols::c0075 {
  user {'root':
    uid => 0,
    gid => 0,
  }
}
