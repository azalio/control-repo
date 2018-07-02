require 'spec_helper'

describe 'profiles::base::users' do
  let(:node) { 'this.is.only.used.for.unit.tests' }
  let(:facts) do
    {}
  end

  let(:params) do
    {
    }
  end

  it do
    is_expected.to contain_accounts__user('azalio').with(
      ensure: 'present',
      name: 'azalio',
      password: '!!',
      groups: ['wheel'],
      shell: '/bin/bash',
      locked: false,
      sshkeys: [/ssh-rsa/],
    )
  end
end
