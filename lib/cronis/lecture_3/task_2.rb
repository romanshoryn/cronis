# Задача 2
# Дано целое число n. Напишите функцию, которая вычисляет сумму всех его цифр.
# Пример
# input: 1234
# output: 10
module Cronis
  module Lecture3
    class ValueSum
      def sum(value)
        sign = value < 0 ? -1 : 1
        number = sign * value

        if number < 10
          return sign * number 
        end

        sign * (value % 10 + sum(value / 10))
      end
    end
  end
end
