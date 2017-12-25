module Cronis::Lecture9
  class Task3
    def is_bst?(node)
      return true if node.nil? || !node.has_child?
      left, right = node.left, node.right

      is_bst =
        (left.exists? ? (left.value < node.value) : true) &&
        (right.exists? ? (node.value <= right.value) : true)

      is_bst && is_bst?(left) && is_bst?(right)
    end
  end
end
