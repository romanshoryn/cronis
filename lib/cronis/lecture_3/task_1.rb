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
        size = array.size - 1

        return array[0] if size < 1

        [array.last, *revert(array[0..size - 1])]
      end
    end
  end
end
