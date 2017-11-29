module Cronis
  module Lecture3
    class SmartOutput
      def call(value)
        array = value.to_s.split('')
        output(array, array.size - 1)
      end

      private
      
      def output(array, index)
        return if index == -1

        print array[index]
        print ', ' if index != 0

        output(array, index - 1)
      end
    end
  end
end
