require 'spec_helper'

describe 'profiles::mysql' do
  let(:node) { 'this.is.only.used.for.unit.tests' }
#  let(:params) do
#    {
#        override_options:  'some options',
#    }
#  end

  it do
      is_expected.to contain_class('mysql::server').with(
          root_password: 'change_me_i_am_insecure',
          remove_default_accounts: false,
          override_options: {"mysqld"=>{"bind-address"=>"127.0.0.1", 
                                        "log-error"=>"/var/log/mysqld.log"}, 
                                        "mysqld_safe"=>{"log-error"=>"/var/log/mysqld.log"}}
      )
  end
end
