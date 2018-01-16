module Cronis::Lecture13
  class Task11
    def sort(array)
      (1..array.size - 2).each do |i|
        prev_val, next_val = array[i - 1], array[i + 1]

        is_top = array[i] >= prev_val && array[i] >= next_val
        is_down = array[i] <= prev_val && array[i] <= next_val
        
        if !is_top && !is_down
          swap(array, i + 1, i)
        end
      end

      array
    end

    def swap(array, from, to)
      temp = array[to]
      array[to] = array[from]
      array[from] = temp
    end
  end
end
