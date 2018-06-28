require 'spec_helper'

describe 'profiles::base' do
  let(:node) { 'this.is.only.used.for.unit.tests' }
  it { should contain_class('profiles::ntp::client') }
end
