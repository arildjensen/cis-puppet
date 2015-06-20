[![Build Status](https://travis-ci.org/arildjensen/cis-puppet.png?branch=master)](https://travis-ci.org/arildjensen/cis-puppet)


Overview
========
 
This module implements the Center for Internet Security (CIS) Security Configuration Benchmark for:
- Amazon Linux 2014.09
- Red Hat Enterprise Linux 6 v.1.4.0 
- Red Hat Enterprise Linux 7 v.1.1.0

Each scored control has been implemented as a class or a custom fact.


Installation
============

Please either:

- Clone git repo from https://github.com/arildjensen/cis-puppet
- Run "puppet module install arildjensen/cis" and install from PuppetForge (http://forge.puppetlabs.com/arildjensen/cis)

Use
===

The class cis::el6all or cis::el7all will enforce all the controls for either RHEL6 or RHEL7. If you wish to deviate please look for the el6all.pp or el7all.pp file and use that as a template. Note that some of the scored controls not able to be written in Puppet code have been implemented as custom facts using Facter. Controls labeled "not scored" by the benchmark are not included.

Also note that there are three subclasses in the cis module:
- cis::linuxcontrols (implements the specific controls with a general name, e.g. cis::linuxcontrols::c0001, allowing for future re-use)
- cis::el6 (maps directly to a specific CIS control for RHEL6, e.g. cis::el6::1_1_17 for control 1.1.17 in the benchmark)
- cis::el7 (maps directly to a specific CIS control for RHEL7, e.g. cis::el6::4_7 for control 4.7 in the benchmark)
- cis::awslinux (maps directly to a specific CIS control for AWS Linux)

User-Controlled Settings
========================
Some of the settings, such as which log server to use, can be specified by the
user. Below is a sample hiera file containing all the current configurable
settings:

```
cis::logserver: 'syslog.localdomain'
cis::ntpserver:
  - ntp1
  - ntp2
  - ntp3
cis::aide_cron_check:
  hour: 6
  minute: 30
```

Author
====

Written by Arild Jensen <ajensen@counter-attack.com> with source code repository at https://github.com/arildjensen/cis-puppet.


Release History
==========
- 0.2.1 - Added Apache 2.0 license
- 0.2.0 - Added comments and implemented hiera support for some of the settings.
- 0.1.0 - Initial release
