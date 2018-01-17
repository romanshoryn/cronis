module Cronis::Lecture13
  class Task12
    def find(array, val, start_idx = 0, end_idx = array.size - 1)
      middle = (end_idx + start_idx) / 2

      return middle if array[middle] == val

      if array[start_idx] <= array[middle]
        if val >= array[start_idx] && val <= array[middle]
          return find(array, val, start_idx, middle)
        end

        return find(array, val, middle, end_idx)
      end

      if val <= array[end_idx] && val >= array[middle]
        return find(array, val, middle, end_idx)
      end

      return find(array, val, start_idx, middle)
    end
  end
end
