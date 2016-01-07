# == Class: sysctl
#
# Ensures sysctl configuration is per Jabil Standard
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { sysctl:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# sillgen <steven_illgen@jabil.com>
#
# === Copyright
#
# Copyright 2014 Jabil, unless otherwise noted.
#
class sysctl::params {
  
  # Basic Config 
  $service_manage          = true
  $service_ensure          = 'running'
  $service_enable          = true
  $service_name            = 'sysctl'
  $service_hasstatus       = true
  $service_hasrestart      = true
  $package_name            = 'sysctl'
  $package_ensure          = 'present'
  $sysctl_file             = '/etc/sysctl.conf'
  $sysctl_file_ensure      = file
  $sysctl_file_source      = 'puppet:///modules/sysctl/sysctl.conf'
  $sysctl_file_owner       = 'root'
  $sysctl_file_group       = 'root'
  $sysctl_file_mode        = '0640'
  $sysctl_config_file      = '/etc/sysctl_conf'
  $sysctl_config_file_ensure      = 'file'
  $sysctl_config_file_group      = 'root'
  $sysctl_config_file_mode      = '0644'
  $sysctl_config_file_owner      = 'root'
  $sysctl_config_file_path      = '/etc/sysctl.conf'
  $sysctl_config_exec      = 'sysctl'
  $sysctl_config_exec_command      = 'sysctl -p'
  $sysctl_config_exec_refreshonly      = true
  $sysctl_config_exec_path      = '/sbin/'

}
