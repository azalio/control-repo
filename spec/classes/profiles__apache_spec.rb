require 'spec_helper'

describe 'profiles::apache' do
  let(:node) { 'this.is.only.used.for.unit.tests' }
  it { should contain_class('apache') }
  it { should contain_class('apache::mod::php') }
  it { should contain_class('apache::mod::cgi') }
  it { should contain_class('apache::mod::userdir') }
  it { should contain_class('apache::mod::disk_cache') }
end
