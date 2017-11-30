# Задача 4
# Напишете рекурсивную функцию, которая находит максимальный элемент в
# массиве делением массива пополам.
# input: {1, 4, 22, -1}
# output: 22
module Cronis
  module Lecture3
    class MaxValueByDevision
      def call(array)
        size = array.size

        return array[0] if size == 1 || size == 0

        mid = size / 2
        val1 = call(array[0..mid - 1])
        val2 = call(array[mid, size])
        
        val1 > val2 ? val1 : val2
      end
    end
  end
end
