require "spec_helper"

RSpec.describe Cronis::Lecture2::StackSort do
  context '#sort' do
    before(:all) do
      @stack = Cronis::Stack.new(5)
      
      @stack.push(4)
      @stack.push(3)
      @stack.push(2)
      @stack.push(5)
      @stack.push(17)
    end

    it 'should return sorted stack' do
      actual_stack = Cronis::Lecture2::StackSort.new.sort(@stack)

      expect(actual_stack.peek).to eq 2
      expect(actual_stack.to_a).to eq [17, 5, 4, 3, 2]
    end
  end
end
