module Cronis::Lecture13
  class Task5
    def find(matrix, val)

      (0..matrix.size).each do |idx|
        return true if matrix[idx][0] == val

        next_idx = idx + 1

        if matrix[next_idx].nil? || matrix[next_idx][0] > val
          byebug
          return find_by_binary(matrix[idx], val) || false
        end
      end
    end

    private

    def find_by_binary(array, val, start_idx = 0, end_idx = array.size - 1)
      idx = (end_idx - start_idx) / 2

      return true if array[idx] == val
      return false if start_idx == end_idx

      if array[idx] > val
        find_by_binary(array, val, idx, end_idx)
      else
        find_by_binary(array, val, start_idx, idx)
      end
    end
  end
end
