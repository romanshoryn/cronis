module Cronis
  class Stack
    attr_reader :stack_size
    attr_reader :stack_top

    def initialize(size)
      @stack = []
      @stack_size = size
      @stack_top = -1
    end

    def push(item)
      if is_full?
        raise 'Stack overflow'
      end

      @stack_top += 1
      @stack[@stack_top] = item
      item
    end

    def pop
      if @stack_top == -1
        raise 'Stack is empty'
      end

      item = @stack[@stack_top]
      @stack_top -= 1
      item
    end

    def peek
      if @stack_top == -1
        raise 'Stack is empty'
      end

      @stack[@stack_top]
    end

    def is_empty?
      @stack_top == -1
    end

    def is_full?
      @stack_top == (@stack_size - 1)
    end

    def to_a
      @stack
    end
  end
end
