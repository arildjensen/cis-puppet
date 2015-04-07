# Class cis::linuxcontrols::c00006
#
# Bind mount /var/tmp to /tmp
#
class cis::linuxcontrols::c00006 {
  mount {'/var/tmp':
    ensure  => mounted, 
    device  => '/tmp', 
    fstype  => 'none', 
    options => 'bind', 
  } 
}
