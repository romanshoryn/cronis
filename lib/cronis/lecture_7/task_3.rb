module Lecture7
  class Task3
    def add_lists(list1, list2)
      number_to_list(
        list_to_number(list1) + list_to_number(list2)
      )
    end

    private

    def list_to_number(list)
      stack = Stack.new

      head = list.head

      while !head.nil?
        stack.push(head)
        head = head.next
      end

      str = ''

      while stack.is_full?
        str << stack.pop.data
      end

      str.to_i
    end

    def number_to_list(num)
      list = OneWayList::List.new

      while num != 0
        list.add_before_head(num % 10)
        num /= 10
      end

      list
    end
  end
end
