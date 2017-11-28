require "spec_helper"

RSpec.describe Cronis::Lecture3::ReverseArray do
  describe '#sum' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture3::MaxValue.new
      end
  
      it 'should return reverted array' do
        expect(@service.max([1, 4, 22, -1])).to eq 22
      end
    end
  end
end
