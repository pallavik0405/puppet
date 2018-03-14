require 'spec_helper'
describe 'nokiaweb' do
  context 'with default values for all parameters' do
    it { should contain_class('nokiaweb') }
  end
end
