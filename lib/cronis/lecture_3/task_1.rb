# Задача 1
# Напишите функцию, которая принимает на вход массив из целых чисел и
# возвращает входной массив в обратном порядке.
# Пример
# input: {1, 2, 3, 4}
# output: {4, 3, 2, 1}
module Cronis
  module Lecture3
    class ReverseArray
      def revert(array)
        do_revert(array, 0, array.size - 1)
      end

      private

      def do_revert(array, id1, id2)
        return array if id1 > id2
        
        temp = array[id1]
        array[id1] = array[id2]
        array[id2] = temp
        
        do_revert(array, id1 + 1, id2 - 1)
      end
    end
  end
end
