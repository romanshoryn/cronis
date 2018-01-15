require "spec_helper"

RSpec.describe Cronis::Lecture13::Task5 do
  describe '#find' do
    context 'with ordinary matrix' do
      it 'should return true' do
        matrix = [
          [1, 4, 5, 7, 9, 11],
          [2, 5, 6, 8, 10, 13],
          [4, 6, 7, 9, 11, 15],
          [7, 8, 9, 12, 14, 22]
        ]

        result = Cronis::Lecture13::Task5.new.find(matrix, 10)

        expect(result).to eq true
      end
    end
  end
end
