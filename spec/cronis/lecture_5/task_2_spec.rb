require "spec_helper"

RSpec.describe Cronis::Lecture5::Task2 do
  describe '#call' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture5::Task2.new
      end
  
      it 'should return painted arrya' do
        actual = [
          [2, 2, 3], [1, 1, 1], [3, 3, 3], [4, 5, 4], [7, 7, 1]
        ]
        
        expected = [
          [4, 5, 4], [2, 2, 3], [1, 1, 1]
        ]

        expect(@service.call(actual)).to eq expected
      end
    end
  end
end
