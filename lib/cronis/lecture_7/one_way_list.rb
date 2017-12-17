module OneWayList
  class Node
    attr_accessor :next
    attr_accessor :data
  end

  class List
    attr_accessor :head
    attr_accessor :tail
  
    def add_before_head(data)
      node = Node.new
      node.data = data
  
      node.next = self.head
  
      if self.head.nil?
        self.tail = node
      end

      self.head = node
    end

    def reverse
      head = self.head
      temp = nil

      while !head.nil?
        orignal_next = head.next
        head.next = temp
        temp = head
        head = orignal_next
      end
    end
  end
end
