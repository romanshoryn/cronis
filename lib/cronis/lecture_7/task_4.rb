module Lecture7
  class Task4
    def palindrome(list)
      stack = Stack.new

      head = list.head

      while !head.nil?
        stack.push(head)
        head = head.next
      end

      head = list.head

      while !head.nil?
        return false head.data != stack.pop.data
        head = head.next
      end

      true
    end
  end
end
