# Задача 6
# Напишите функцию, которая решает является ли слово палиндром.
# Пример
# input: abba
# output: true
module Cronis
  module Lecture3
    class Palindrom
      def call(str)
        return true if !str || str.size == 1

        idx = str.size - 1
        str[0] == str[idx] && call(str[1..idx - 1])
      end
    end
  end
end
