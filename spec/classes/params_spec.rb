#!/usr/bin/env rspec
require 'spec_helper'
describe 'sysctl::params' do

  context 'with defaults for all parameters' do
    it { should contain_class('sysctl::params') }
  end
end
