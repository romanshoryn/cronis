module Lecture7
  class Task2
    def remove(node)
      return if node.nil? || node.next.nil?
      
      next_node = node.next

      node.next = next_node.next
      node.data = next_node.data

      node
    end
  end
end
