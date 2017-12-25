require "spec_helper"

RSpec.describe Cronis::Lecture9::Task3 do
  describe '#is_bst?' do
    context 'with bst tree' do
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

      it 'should return true' do
        result = Cronis::Lecture9::Task3.new.is_bst?(@root)

        expect(result).to eq true
      end
    end

    context 'with not bst tree' do
      before do
        @root = Bst::Node.new
        @root.value = 10

        @root.left = Bst::Node.new(nil, nil, 5)
        @root.right = Bst::Node.new(nil, nil, 11)

        node = @root.right
        node.left = Bst::Node.new(nil, nil, 12)
        node.right = Bst::Node.new(nil, nil, 13)
      end

      it 'should return false' do
        result = Cronis::Lecture9::Task3.new.is_bst?(@root)

        expect(result).to eq false
      end
    end
  end
end
