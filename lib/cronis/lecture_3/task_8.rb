# Задача 8
# Напишите функцию получения всех перестановок символов в строке. Символы в строке
# не уникальны, ответ не должен содержать повторяющихся строк.
# Пример
# input: abcb
# output: {"abbc", "abcb", "acbb", "babc", "bacb", "bbac",
# "bbca", "bcab", "bcba", "cabb", "cbab", "cbba"}
module Cronis
  module Lecture3
    class Task8
      def call(str)
        permutation(str)
      end

      private

      def permutation(str, start_pos = 0, result = [])
        if start_pos == str.size - 1
          result << str.clone
          return result
        end

        (start_pos..str.size - 1).each do |idx|
          str1 = swap_chars(str, start_pos, idx)
          permutation(str1.clone, start_pos + 1, result)
        end

        result
      end

      def swap_chars(str, idx1, idx2)
        temp = str[idx1]
        str[idx1] = str[idx2]
        str[idx2] = temp
        str
      end
    end
  end
end
