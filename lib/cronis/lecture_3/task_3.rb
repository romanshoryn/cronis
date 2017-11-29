# Задача 3
# Напишите рекурсивную функцию, которая находит максимальный элемент в
# массиве.
# input: {1, 4, 22, -1}
# output: 22
module Cronis
  module Lecture3
    class MaxValue
      def call(array)
        max(array, array.size - 1)
      end

      private

      def max(array, index)
        return array[0] if index == 0

        value1 = array[index] 
        value2 = max(array, index - 1)

        value1 > value2 ? value1 : value2
      end
    end
  end
end
