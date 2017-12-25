module Cronis::Lecture9
  class Task2
    def tree_to_list(node, list = [], level = 0)
      return if node.nil? || !node.exists?
      list[level] = [] if list[level].nil?
      list[level] << node.value

      next_level = level + 1

      tree_to_list(node.left, list, next_level)
      tree_to_list(node.right, list, next_level)

      return list
    end
  end
end
