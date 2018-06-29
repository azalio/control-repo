require 'spec_helper'

describe 'roles::webserver' do
  let(:node) { 'this.is.only.used.for.unit.tests' }
  it { should contain_class('profiles::base') }
  it { should contain_class('profiles::apache') }
end
