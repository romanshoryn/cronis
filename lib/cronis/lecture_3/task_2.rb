# Задача 2
# Дано целое число n. Напишите функцию, которая вычисляет сумму всех его цифр.
# Пример
# input: 1234
# output: 10
module Cronis
  module Lecture3
    class ValueSum
      def sum(value)
        value_array = value.to_s.split('').map(&:to_i)
        
        do_sum(value_array, 0)
      end

      private

      def do_sum(array, idx)
        return array[idx] if (array.size - 1) == idx

        array[idx] + do_sum(array, idx + 1)
      end
    end
  end
end
