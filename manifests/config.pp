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
class sysctl::config {
  file { $::sysctl::params::sysctl_config_file:
    ensure => $::sysctl::params::sysctl_config_file_ensure,
    group  => $::sysctl::params::sysctl_config_file_group,
    mode   => $::sysctl::params::sysctl_config_file_mode,
    owner  => $::sysctl::params::sysctl_config_file_owner,
#    path   => $::sysctl::params::sysctl_config_file_path,
  }

  exec { $::sysctl::params::sysctl_config_exec:
    command     => $::sysctl::params::sysctl_config_exec_command,
    refreshonly => $::sysctl::params::sysctl_config_exec_refreshonly,
    path        => $::sysctl::params::sysctl_config_exec_path,
    subscribe   => File[$::sysctl::params::sysctl_config_file],
    #subscribe   => File['/etc/sysctl_conf'],
  }
}
