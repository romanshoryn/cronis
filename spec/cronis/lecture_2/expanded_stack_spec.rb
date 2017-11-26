require "spec_helper"

RSpec.describe Cronis::Lecture2::ExpandedStack do
  context '#push' do
    context 'when stack exceeds default stack size' do
      before do
        @stack = Cronis::Lecture2::ExpandedStack.new(9, 3)
        @stack.push(1)
        @stack.push(2)
        @stack.push(3)
      end

      it 'should expand to one more stack' do
        expect(@stack.main_stack.peek.is_full?).to eq true

        expect { @stack.push(4) }.to_not raise_error
        expect(@stack.peek).to eq 4
      end
    end
  end
  
  context '#pop' do
    context 'when sub stack has only one item left' do
      before do
        @stack = Cronis::Lecture2::ExpandedStack.new(9, 3)
        @stack.push(1)
        @stack.push(2)
        @stack.push(3)
        @stack.push(4)
      end

      it 'should pop empty stack' do
        expect(@stack.main_stack.stack_top).to eq 1
        expect(@stack.pop).to eq 4
        expect(@stack.main_stack.stack_top).to eq 0
      end
    end
  end

  context '#peek' do
  end

  context '#is_empty' do
  end
end
