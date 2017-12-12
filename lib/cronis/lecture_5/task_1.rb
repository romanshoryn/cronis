module Cronis
  module Lecture5
    class Task1
      def call(board, col)
        solve(board, col)

        p board
      end

      def solve(board, col)
        if col < 0 || col >= board.size
          return false
        end

        (0...board.size).each do |i|
          if is_safe(board, i, col)
            board[i][col] = 1
            
            if call(board, col + 1)
              return true
            end
            
            board[i][col] = 0
          end
        end

        return false
      end

      def is_safe(board, row, col)
        (0...col).each do |i|
          return false if board[row][i] == 1
        end

        (1..row).each do |i|
          return false if board[row - i][col - i] == 1
        end

        (1...(board.size - row)).each do |i|
          return false if board[row + i][col - i] == 1
        end

        true
      end
    end
  end
end