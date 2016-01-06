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
class sysctl (
  $service_ensure           = $::sysctl::params::service_ensure,
  $service_enable           = $::sysctl::params::service_enable,
  $service_name             = $::sysctl::params::service_name,
  $service_hasstatus        = $::sysctl::params::service_hasstatus,
  $service_hasrestart       = $::sysctl::params::service_hasrestart,
  $package_name             = $::sysctl::params::package_name,
  $package_ensure           = $::sysctl::params::package_ensure,

) inherits sysctl::params {

  contain sysctl::install
  contain sysctl::config

  Class['sysctl::install'] ->
  Class['sysctl::config']
}
