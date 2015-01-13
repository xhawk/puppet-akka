require 'spec_helper'
describe 'akka' do

  context 'with defaults for all parameters' do
    it { should contain_class('akka') }
  end
end
