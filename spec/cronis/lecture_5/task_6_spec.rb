require "spec_helper"

RSpec.describe Cronis::Lecture5::Task6 do
  describe '#call' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture5::Task2.new
      end
  
      it 'should return path' do
        actual = [
          [0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0],
        ]

        expect(@service.call(actual)).to eq []
      end
    end
  end
end
