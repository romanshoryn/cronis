require "spec_helper"

RSpec.describe Cronis::Lecture13::Task12 do
  describe '#find' do
    context 'with ordinary array' do
      it 'should return sorted array' do
        array1 = [25, 1, 3, 4, 5, 7, 10, 14, 15, 16, 19, 20]
        array2 = [15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14]
        array3 = [4, 5, 7, 10, 14, 15, 16, 19, 20, 25, 1, 3]

        val = 5

        result = Cronis::Lecture13::Task12.new.find(array1, val)
        expect(result).to eq 4

        result = Cronis::Lecture13::Task12.new.find(array2, val)
        expect(result).to eq 8

        result = Cronis::Lecture13::Task12.new.find(array3, val)
        expect(result).to eq 1
      end
    end
  end
end



