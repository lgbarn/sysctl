# Class: sysctl
#
# This module manages sysctl
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class sysctl {
file { '/etc/sysctl.conf':
  ensure  => 'file',
  group   => '0',
  mode    => '644',
  owner   => '0',
}

  exec { "/sbin/sysctl -p":
    alias       => "sysctl",
    refreshonly => true,
    subscribe   => File["/etc/sysctl.conf"],
  }
}
