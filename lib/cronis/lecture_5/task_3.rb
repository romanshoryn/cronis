# Задача 3
# Реализуйте функцию paintFill, которая есть в программе MS Paint. Экран
# представлен двумерным массивом цветов, дана точка от которой необходимо начать
# заливку и новый цвет. Заполните область, пока ее цвет не изменится с исходного на
# заданный.
module Cronis
  module Lecture5
    class Task3
      DEFAULT_COLOR = 0
      START_COLOR = 1
      TARGET_COLOR = 2

      def paint_fill(array, x, y)
        memo = Array.new(array.size + 1) { [] }

        __paint_fill(array, x, y, memo)
      end

      def __paint_fill(array, x, y, memo)
        if (x < 0 || x > array.size - 1)
          return false
        end

        if (y < 0 || y > array.size - 1)
          return false
        end

        if memo[x][y]
          return true
        end

        if array[x][y] == DEFAULT_COLOR
          return false
        end

        if array[x][y] == START_COLOR
          array[x][y] = TARGET_COLOR

          memo[x - 1][y] = __paint_fill(array, x - 1, y, memo)
          memo[x + 1][y] = __paint_fill(array, x + 1, y, memo)
          memo[x][y - 1] = __paint_fill(array, x, y - 1, memo)
          memo[x][y + 1] = __paint_fill(array, x, y + 1, memo)
        end

        array
      end
    end
  end
end
