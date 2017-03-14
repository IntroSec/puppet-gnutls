require 'spec_helper'
describe 'gnutls' do
  context 'with default values for all parameters' do
    it { should contain_class('gnutls') }
  end
end
