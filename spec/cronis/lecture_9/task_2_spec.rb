require "spec_helper"

RSpec.describe Cronis::Lecture9::Task2 do
  describe '#tree_to_list' do
    context 'with ordinary tree' do
      before do
        @tree = Bst::Tree.new
        @root = Bst::Node.build

        @tree.insert(@root, 5)

        @tree.insert(@root, 4)
        @tree.insert(@root, 3)
        @tree.insert(@root, 2)

        @tree.insert(@root, 6)
        @tree.insert(@root, 7)
        @tree.insert(@root, 8)
      end

      it 'should return list' do
        list = Cronis::Lecture9::Task2.new.tree_to_list(@root)

        expect(list).to eq [[5], [4, 6], [3, 7], [2, 8]]
      end
    end
  end
end
