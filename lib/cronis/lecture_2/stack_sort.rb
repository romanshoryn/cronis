# Задача 1
# Напишите программу, которая сортирует стек так, чтобы наименьший элемент
# был вершиной стека. Можно использовать только один дополнительный стек для
# сортировки исходного стека. Нельзя использовать массив или другие структуры
# данных.

module Cronis
  module Lecture2
    class StackSort
      def sort(origin_stack)
        helper_stack = Stack.new(origin_stack.stack_size)

        while !origin_stack.is_empty? do
          item = origin_stack.pop

          if !helper_stack.is_empty? && (helper_stack.peek < item)
            move_items(helper_stack, origin_stack)
          end

          helper_stack.push(item)
        end

        # TODO: need to return origin stack
        helper_stack
      end

      private

      def move_items(from_stack, to_stack)
        while !from_stack.is_empty? do
          to_stack.push(from_stack.pop)
        end
      end
    end
  end
end
