require "spec_helper"

RSpec.describe Cronis::Lecture13::Task2 do
  describe '#find_string' do
    context 'with ordinary array' do
      it 'should return string' do
        array = ["at", "", "", "cat", "", "", "ball", "", "", "doll"]

        result = Cronis::Lecture13::Task2.new.find_string(array, 'cat')

        expect(result).to eq 3
      end
    end
  end
end
