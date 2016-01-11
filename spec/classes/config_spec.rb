#!/usr/bin/env rspec
require 'spec_helper'
describe 'sysctl::config' do
    #let(:params) { { :sysctl_config_file => '/etc/sysctl.conf' ,:service_enable => 'true', :service_name => 'auditd' ,:service_hasstatus => 'true', :service_hasrestart => 'true', :service_manage => 'true'} }
    let(:title) { '/etc/sysctl.conf' }
#  context 'with defaults for all parameters' do
    it { should contain_class('sysctl::config') }
#  end
end
