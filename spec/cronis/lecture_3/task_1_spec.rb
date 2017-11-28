require "spec_helper"

RSpec.describe Cronis::Lecture3::ReverseArray do
  describe '#revert' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture3::ReverseArray.new
      end
  
      it 'should return reverted array' do
        expect(@service.revert([1, 2, 3, 4])).to eq [4, 3, 2, 1]
      end
    end
  end
end
