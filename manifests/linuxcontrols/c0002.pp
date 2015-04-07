# Class cis::linuxcontrols::c0002
#
# Ensure the Red Hat GPG encryption keys are installed.
# 1) The redhat-release-server-6Server package should be installed, which
#    contains the /etc/pki/rpm-gpg/RPM-GPG-KEY* pubkeys 
# 2) Unless these pubkeys have already been imported, import them
# 3) Only the release keys are imported, legacy keys and beta keys are
#    commented out

class cis::linuxcontrols::c0002 {
  package {'redhat-release-server-6Server':
    ensure  => installed,
  }

  # pub  4096R/FD431D51 2009-10-22 Red Hat, Inc. (release key 2) <security@redhat.com>
  # pub  1024D/2FA658E0 2006-12-01 Red Hat, Inc. (auxiliary key) <security@redhat.com>
  #
  exec { 'rpm --import RPM-GPG-KEY-redhat-release':
    command => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release',
    path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
    require => Package['redhat-release-server-6Server'],
    unless  => 'rpm -qi gpg-pubkey-fd431d51-4ae0493b > /dev/null 2>&1',
  }

  #
  # pub  1024D/37017186 2006-12-06 Red Hat, Inc. (release key) <security@redhat.com>
  #
  exec { 'rpm --import RPM-GPG-KEY-redhat-legacy-release':
    command => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-legacy-release',
    path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
    require => Package['redhat-release-server-6Server'],
    unless  => 'rpm -qi gpg-pubkey-37017186-45761324 > /dev/null 2>&1',
  }

  # pub  4096R/F21541EB 2009-02-24 Red Hat, Inc. (beta key 2) <security@redhat.com>
  # pub  1024D/897DA07A 2002-03-15 Red Hat, Inc. (Beta Test Software) <rawhide@redhat.com>
  # sub  1024g/9E774FDD 2002-03-15
  #
  #exec { 'rpm --import RPM-GPG-KEY-redhat-beta':
  #  command => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-beta',
  #  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  #  require => Package['redhat-release-server-6Server'],
  #  unless  => 'rpm -qi gpg-pubkey-f21541eb-4a5233e7 > /dev/null 2>&1',
  #}

  #pub  1024D/DB42A60E 1999-09-23 Red Hat, Inc <security@redhat.com>
  #sub  2048g/961630A2 1999-09-23

  #exec { 'rpm --import RPM-GPG-KEY-redhat-legacy-former':
  #  command => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-legacy-former',
  #  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  #  require => Package['redhat-release-server-6Server'],
  #  unless  => 'rpm -qi gpg-pubkey-db42a60e-37ea5438 > /dev/null 2>&1',
  #}

  #pub  1024D/42193E6B 2007-04-17 Red Hat, Inc. (RHX key) <rhx-support@redhat.com>
  #
  #exec { 'rpm --import RPM-GPG-KEY-redhat-legacy-rhx':
  #  command => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-legacy-rhx',
  #  path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  #  require => Package['redhat-release-server-6Server'],
  #  unless  => 'rpm -qi gpg-pubkey-42193e6b-4624eff2 > /dev/null 2>&1',
  #}


}
