Overview
========
 
This module implements the Center for Internet Security (CIS) Security Configuration Benchmark for Red Hat Enterprise Linux 6 v.1.1.0 (avilable at http://benchmarks.cisecurity.org). Each scored control has been implemented as a class or a custom fact.

Installation
============

Please either:

- Clone git repo from https://github.com/arildjensen/cis-puppet
- Run "puppet module install arildjensen/cis" and install from PuppetForge (http://forge.puppetlabs.com/arildjensen/cis)

Use
===

The class cis::el6all will enforce all the controls. If you wish to deviate please look for the el6all.pp file and use that as a template. Note that some of the scored controls not able to be written in Puppet code have been implemented as custom facts using Facter. Controls labeled "not scored" by the benchmark are not included.

Also note that there are two subclasses in the cis module, cis::linuxcontrols and cis::el6. The former implements the specific controls with a general name (such as cis::linuxcontrols::c0001), allowing for future re-use. The latter maps directly to a specific CIS control for RHEL6 (such as cis::el6::1_1_17 for control 1.1.17 in the benchmark).

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
- 0.2.0 - Added comments and implemented hiera support for some of the settings.
- 0.1.0 - Initial release
