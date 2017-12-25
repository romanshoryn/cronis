require "spec_helper"

RSpec.describe Cronis::Lecture9::Task1 do
  describe '#create_from' do
    context 'with ordinary array' do
      it 'should return tree' do
        arr = [1, 2, 3, 4, 5]
        node = Bst::Node.build

        result = Cronis::Lecture9::Task1.new.create_from(arr, node)

        expect(result).to eq true
      end
    end
  end
end
