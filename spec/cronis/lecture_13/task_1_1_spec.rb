require "spec_helper"

RSpec.describe Cronis::Lecture13::Task11 do
  describe '#sort' do
    context 'with ordinary array' do
      it 'should return sorted array' do
        array1 = [5, 3, 1, 2, 3]

        result = Cronis::Lecture13::Task11.new.sort(array1)

        expect(result).to eq [5, 1, 3, 2, 3]
      end
    end
  end
end
