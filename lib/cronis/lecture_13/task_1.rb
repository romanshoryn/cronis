module Cronis::Lecture13
  class Task1
    def merge(array1, array2)
      idx1 = array1.size
      idx2 = 0
      curr_idx = 0

      move_to_end(array1)

      loop do
        break if idx1 == array1.size - 1 || idx2 == array2.size - 1

        if array1[idx1] >= array2[idx2]
          array1[curr_idx] = array2[idx2]
          idx2 += 1
        else
          array1[curr_idx] = array1[idx1]
          idx1 += 1
        end

        curr_idx += 1
      end

      array1
    end

    private

    def move_to_end(array)
      idx1 = array.size

      (0..array.size - 1).each do |idx|
        array[idx1] = array[idx]
        array[idx] = nil
        idx1 += 1
      end

      array
    end
  end
end
