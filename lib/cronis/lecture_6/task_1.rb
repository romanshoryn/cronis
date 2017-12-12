module Cronis
  module Lecture6
    class Task1
      def double_to_binary(double)
        buffer = []

        (0..32).each do |i|
          raise 'Out of memory' if i == 32

          val = double << 2
          buffer << (val >= 1 ? 1 : 0)
         
          return buffer if val == 1
          double = val % 1
        end
      end
    end
  end
end
