# Class cis::awslinux::1_4_1
#
# CIS Security Benchmark for RHEL7
#

class cis::awslinux::1_4_7   {
  include cis::linuxcontrols::c0006

  # NOTE:
  # - need to do additional steps to fully enable SELinux, see
  #   http://blog.oneiroi.co.uk/selinux/amazon/aws/ec2/ami/linux/security/selinux-on-amazon-ami-linux/
}
