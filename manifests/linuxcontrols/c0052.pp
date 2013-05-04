# Class cis::linuxcontrols::c0052
#
# Ensure auditd is enabled at boot to record system events.
#

class cis::linuxcontrols::c0052 {
  service {'auditd':
    enable => true,
    }
}
