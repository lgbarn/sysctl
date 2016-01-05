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
file { 'sysctl_conf':
  ensure => 'file',
  group  => '0',
  mode   => '0644',
  owner  => '0',
  path   => '/etc/sysctl.conf',
}

  exec { 'sysctl':
    command     => 'sysctl -p',
    refreshonly => true,
    path        => '/sbin/',
    subscribe   => File['sysctl_conf'],
  }
}
