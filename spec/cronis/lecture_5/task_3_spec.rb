require "spec_helper"

RSpec.describe Cronis::Lecture5::Task3 do
  describe '#paint_fill' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture5::Task3.new
      end
  
      it 'should return painted arrya' do
        actual_board = [
          [0, 0, 0, 0, 0],
          [0, 0, 0, 1, 0],
          [0, 0, 1, 1, 0],
          [0, 0, 1, 1, 1],
          [1, 1, 1, 1, 1],
        ]

        expected_board = [
          [0, 0, 0, 0, 0],
          [0, 0, 0, 2, 0],
          [0, 0, 2, 2, 0],
          [0, 0, 2, 2, 2],
          [2, 2, 2, 2, 2],
        ]

        expect(@service.paint_fill(actual_board, 1, 3)).to eq(expected_board)
      end
    end
  end
end
