module Lecture7
  class Task1
    def find_from_end(list, idx)
      list.reverse
      item = list.head

      (1..idx).each do |i|
        item = item.next
      end

      item
    end
  end
end
