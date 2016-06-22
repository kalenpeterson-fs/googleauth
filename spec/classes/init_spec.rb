require 'spec_helper'
describe 'googleauth' do

  context 'with default values for all parameters' do
    it { should contain_class('googleauth') }
  end
end
