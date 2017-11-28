require "spec_helper"

RSpec.describe Cronis::Lecture3::ReverseArray do
  describe '#sum' do
    context 'when random value is passed' do
      before do
        @service = Cronis::Lecture3::ValueSum.new
      end
  
      it 'should return sum' do
        expect(@service.sum(1234)).to eq 10
      end
    end
  end
end
