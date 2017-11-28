# Задача 3
# Напишите рекурсивную функцию, которая находит максимальный элемент в
# массиве.
# input: {1, 4, 22, -1}
# output: 22
module Cronis
  module Lecture3
    class MaxValue
      def max(array)
        do_max(array, array[0])
      end

      private

      def do_max(array, item)
        return item if array[]


        array[idx] + do_sum(array, idx + 1)
      end
    end
  end
end
