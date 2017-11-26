# Задача 2
# Представьте стопку тарелок. Если она будет слишком высокой, то она обрушится.
# Для того, чтобы она не рушилась, нужно делать несколько стопок тарелок.
# Напишите программу, которая повторяет это поведение. Другими словами: если
# текущий стек полностью заполнен, создается новый стек и заполняется уже он.
# При этом функции push и pop для пользователя должны себя вести так, как будто
# это обычный стек.

module Cronis
  module Lecture2
    class ExpandedStack
      DEFAULT_SUB_STACK_SIZE = 3

      attr_reader :default_size
      attr_reader :main_stack

      def initialize(stack_size, sub_stack_size = DEFAULT_SUB_STACK_SIZE)
        @stack_size = stack_size
        @sub_stack_size = sub_stack_size

        stack_count = (@stack_size.to_f / @sub_stack_size.to_f).round

        @main_stack = Stack.new(stack_count)
        @main_stack.push(Stack.new(@sub_stack_size))
      end

      def push(value)
        stack = @main_stack.peek

        if stack.is_full?
          stack = @main_stack.push(Stack.new(@sub_stack_size))
        end
        
        stack.push(value)
      end

      def pop
        stack = @main_stack.peek
        value = stack.pop

        if stack.is_empty?
          @main_stack.pop
        end

        value
      end

      def peek
        stack = @main_stack.peek
        stack.peek
      end

      def is_empty?(stack_index)
        stack = @main_stack.peek
        stack.is_empty?
      end
    end
  end
end
