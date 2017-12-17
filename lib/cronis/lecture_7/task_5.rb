module Lecture7
  class Task4
    def get_intersection_point(list1, list2)
      if list1.head.nil? || list2.head.nil?
        return nil
      end

      hash = {}

      head = list1.head

      while !head.nil?
        hash[head] = true
        head = head.next
      end

      head = list2.head

      while !head.nil?
        return hash[head] if hash[head]
        head = head.next
      end

      nil
    end
  end
end
