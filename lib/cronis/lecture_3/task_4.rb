# Задача 4
# Напишете рекурсивную функцию, которая находит максимальный элемент в
# массиве делением массива пополам.
# input: {1, 4, 22, -1}
# output: 22
module Cronis
  module Lecture3
    class MaxValueByDevision
      def call(array)
        max(array, 0, array.size - 1)
      end

      private

      def max(array, start_idx, end_idx)
        return array[end_idx] if end_idx == start_idx

        idx = (end_idx - start_idx) / 2 + start_idx

        max1 = max(array, start_idx, idx)
        max2 = max(array, idx + 1, end_idx)

        return max1 > max2 ? max1 : max2
      end
    end
  end
end
