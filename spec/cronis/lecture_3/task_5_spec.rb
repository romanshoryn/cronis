require "spec_helper"

RSpec.describe Cronis::Lecture3::SmartOutput do
  describe '#call' do
    context 'when random value is passed' do
      before do
        @service = Cronis::Lecture3::SmartOutput.new
      end
  
      it 'should display value through comas' do
        expect(@service.call(12345)).to eq '1, 2, 3, 4, 5'
      end
    end
  end
end
