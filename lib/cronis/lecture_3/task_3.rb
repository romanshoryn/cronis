# Задача 3
# Напишите рекурсивную функцию, которая находит максимальный элемент в
# массиве.
# input: {1, 4, 22, -1}
# output: 22
module Cronis
  module Lecture3
    class MaxValue
      def call(array)
        idx = array.size - 1

        return array[0] if idx < 1

        val1 = call(array[0..idx - 1])
        val2 = array[idx]
        
        val1 > val2 ? val1 : val2
      end
    end
  end
end
