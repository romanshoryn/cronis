require "spec_helper"

RSpec.describe Cronis::Lecture3::MaxValue do
  describe '#call' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture3::MaxValueByDevision.new
      end
  
      it 'should return max value' do
        expect(@service.call([1, 4, 22, -1])).to eq 22
      end
    end
  end
end
