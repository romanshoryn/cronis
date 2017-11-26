# Задача 3
# Напишите программу, которая реализует три стека используя один массив. У нее
# должны быть реализованы следующие методы:
# • push(int stackIndex, value)
# • pop(int stackIndex)
# • peek(int stackIndex)
# • isEmpty(int stackIndex)

module Cronis
  module Lecture2
    class PowerStack
      attr_reader :stack_size
      attr_reader :stack_pointers
      attr_reader :__stack

      def initialize(stack_size)
        @__stack = []
        @stack_size = stack_size
        @stack_pointers = [-1, -1, -1]
      end

      def push(stack_index, value)
        if @stack_pointers[stack_index] == (@stack_size - 1)
          raise 'Stack overflow'
        end

        @stack_pointers[stack_index] += 1
        index = get_index(stack_index)
       
        @__stack[index] = value
      end

      def pop(stack_index)
        if is_empty?(stack_index)
          raise 'Stack is empty'
        end

        index = get_index(stack_index)
        @stack_pointers[stack_index] -= 1
        
        @__stack[index]
      end

      def peek(stack_index)
        if is_empty?(stack_index)
          raise 'Stack is empty'
        end

        index = get_index(stack_index)
        @__stack[index]
      end

      def is_empty?(stack_index)
        @stack_pointers[stack_index] == -1
      end

      private

      def get_index(stack_index)
        stack_index * @stack_size + @stack_pointers[stack_index]
      end
    end
  end
end
