module Cronis::Lecture9
  class Task1
    def create_from(arr, node)
      return if arr.empty?
      pointer = arr.size / 2

      node.left = Bst::Node.new if node.left.nil?
      node.right = Bst::Node.new if node.right.nil?

      if node.exists?
        child = node.value > arr[pointer] ? node.left : node.right
        child.value = arr[pointer]
      else
        node.value = arr[pointer]
      end

      create_from(arr[0...pointer], node.left)
      create_from(arr[pointer + 1...arr.size], node.right)

      return node
    end
  end
end
