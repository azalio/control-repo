require 'spec_helper'

describe 'database.local' do

  let(:facts) do
    {}
  end

  let(:params) do
    {
    }
  end

  it { is_expected.to compile.with_all_deps }

  it do
    is_expected.to contain_class('roles::database_server')
  end
end
