# Class cis::linuxcontrols::c0015
#
# Enforce the following settings:
# - Disable core dumps of SUID programs
# - Enable ExecShield
# - Enable randomized virtual memory region placement
#
# Enforce the following network settings:
# - Disable IP forwarding
# - Disable send packets redirects
# - Disable source routed packet acceptance
# - Disable ICMP redirect acceptance
# - Disable secure ICMP redirect acceptance
# - Log suspicious packets
# - Enable ignore broadcast requests
# - Enable bad error message protection
# - Enable RFC-recommended source route validation
# - Enable TCP SYN cookies
#

class cis::linuxcontrols::c0015 {

    sysctl::value { 'fs.suid_dumpable': value => '0' }
    case $::osfamily {
        'RedHat': {
            if $::operatingsystemmajrelease < 7 {
                sysctl::value { 'kernel.exec-shield': value => '1' }
            }
        }
        default:  {
            sysctl::value { 'kernel.exec-shield': value => '1' }
        }
    }
    sysctl::value { 'kernel.randomize_va_space': value => '2' }
    sysctl::value { 'net.ipv4.conf.all.send_redirects': value => '0' }
    sysctl::value { 'net.ipv4.conf.default.send_redirects': value => '0' }
    sysctl::value { 'net.ipv4.conf.all.accept_source_route': value => '0' }
    sysctl::value { 'net.ipv4.conf.all.accept_redirects': value => '0' }
    sysctl::value { 'net.ipv4.conf.all.secure_redirects': value => '0' }
    sysctl::value { 'net.ipv4.conf.all.log_martians': value => '1'}
    sysctl::value { 'net.ipv4.conf.default.accept_redirects': value => '0' }
    sysctl::value { 'net.ipv4.conf.default.secure_redirects': value => '0' }
    sysctl::value { 'net.ipv4.icmp_echo_ignore_broadcasts': value => '1' }
    sysctl::value { 'net.ipv4.icmp_ignore_bogus_error_responses': value => '1' }
    sysctl::value { 'net.ipv4.conf.all.rp_filter': value => '1' }
    sysctl::value { 'net.ipv4.tcp_max_syn_backlog': value => '4096' }
}
