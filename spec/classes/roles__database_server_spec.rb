require 'spec_helper'

describe 'roles::database_server' do
  let(:node) { 'this.is.only.used.for.unit.tests' }
  it { should contain_class('profiles::base') }
  it { should contain_class('profiles::mysql') }
end
