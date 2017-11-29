module Cronis
  module Lecture3
    class Palindrom
      def call(string)
        array = string.split('')

        val = swap(array, 0, array.size - 1).join('')

        string == val
      end

      private
      
      def swap(array, idx1, idx2)
        return array if idx1 > idx2

        val = array[idx1]
        array[idx1] = array[idx2]
        array[idx2] = val

        swap(array, idx1 + 1, idx2 -  1)
      end
    end
  end
end
