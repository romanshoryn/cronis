require "spec_helper"

RSpec.describe Cronis::Lecture13::Task1 do
  describe '#merge' do
    context 'with ordinary array' do
      it 'should return sorted array' do
        array1 = [1, 5, 7]
        array2 = [1, 3, 6]

        result = Cronis::Lecture13::Task1.new.merge(array1, array2)

        expect(result).to eq [1, 3, 5, 6, 7]
      end
    end
  end
end
