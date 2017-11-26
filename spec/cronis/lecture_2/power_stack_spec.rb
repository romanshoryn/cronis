require "spec_helper"

RSpec.describe Cronis::Lecture2::PowerStack do
  context '#push' do
    context 'when specific stack is not full' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
      end

      it 'should put value on the stack' do
        expect { @stack.push(1, 4) }.to_not raise_error
        expect(@stack.stack_pointers).to eq [-1, 0, -1]
        expect(@stack.__stack[3]).to eq 4
      end
    end

    context 'when specific stack is full' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
        @stack.push(1, 1)
        @stack.push(1, 2)
        @stack.push(1, 3)
      end

      it 'should raise Stack overflow' do
        expect { @stack.push(1, 4) }.to raise_error 'Stack overflow'
      end
    end
  end

  context '#pop' do
    context 'when specific stack is empty' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
      end

      it 'should raise Stack is empty' do
        expect { @stack.pop(1) }.to raise_error 'Stack is empty'
      end
    end

    context 'when specific stack is not empty' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
        @stack.push(1, 2)
        @stack.push(1, 3)
      end

      it 'should pop the value' do
        expect(@stack.pop(1)).to eq 3
        expect(@stack.stack_pointers).to eq [-1, 0, -1]
      end
    end
  end

  context '#peek' do
    context 'when specific stack is empty' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
      end

      it 'should raise Stack is empty' do
        expect { @stack.peek(1) }.to raise_error 'Stack is empty'
      end
    end

    context 'when specific stack is not empty' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
        @stack.push(1, 2)
        @stack.push(1, 3)
      end

      it 'should peek the value' do
        expect(@stack.peek(1)).to eq 3
        expect(@stack.stack_pointers).to eq [-1, 1, -1]
      end
    end
  end

  context '#is_empty' do
    context 'when specific stack is empty' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
      end

      it 'should return true' do
        expect(@stack.is_empty?(1)).to eq true
      end
    end

    context 'when specific stack is not empty' do
      before do
        @stack = Cronis::Lecture2::PowerStack.new(3)
        @stack.push(1, 2)
        @stack.push(1, 3)
      end

      it 'should return false' do
        expect(@stack.is_empty?(1)).to eq false
      end
    end
  end
end
