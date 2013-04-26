# Class cis::linuxcontrols::c0002
#
# Ensure the Red Hat GPG encryption key is installed.
#

class cis::linuxcontrols::c0002 {
  package {'gpg-pubkey':
    ensure  => installed,
  }
}
