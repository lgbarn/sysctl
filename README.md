
[![Build Status](https://travis-ci.org/lgbarn/sysctl.png?branch=master)](https://travis-ci.org/lgbarn/sysctl)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with sysctl](#setup)
    * [What sysctl affects](#what-sysctl-affects)
    * [Beginning with sysctl](#beginning-with-sysctl)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module will install a basic template for sysctl kernel parameters. 

## Module Description

This module edits the default /etc/sysctl.conf and re-reads sysctl.

## Setup

### What sysctl affects

* /etc/sysctl.conf

### Beginning with sysctl

Install module with `sudo puppet module install sysctl` or use r10k.

## Usage

Use the following syntax to get this module working:

~~~
include sysctl
~~~

or 

~~~
class { 'sysctl': }
~~~

## Reference

### Classes

#### Public Classes
- `sysctl`: Installs and configures sysctl on your server.

####Private Classes
- [`sysctl::config`](#sysctlconfig): Configures the module. 
- [`sysctl::conf`](#sysctlconfig): Configures kernel parameters . 
- [`sysctl::install`](#sysctlinstall): Does nothing.
- [`sysctl::params`](#sysctlparams): Handle parameters to module.

## Limitations

This module has only been tested on RedHat,CentOS and it derivatives. 
All other distributions are not supported.

## Development

This module is public and can be found on github [here](https://github.com/lgbarn/sysctl)

