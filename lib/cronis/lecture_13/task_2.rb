module Cronis::Lecture13
  class Task2
    def find_string(array, str, start_idx = 0, end_idx = array.size - 1)
      idx = (end_idx - start_idx) / 2

      curr_string = array[idx]

      if curr_string == ''
        curr_string = array[idx -= 1] || array[idx += 2]
      end

      return idx if curr_string == str

      if curr_string > str
        find_string(array, str, idx, end_idx)
      else
        find_string(array, str, start_idx, idx)
      end
    end
  end
end
