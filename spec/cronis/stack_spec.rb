require "spec_helper"

RSpec.describe Cronis::Stack do
  context '#push' do
    context 'when stack is empty' do
      before(:all) do
        @stack = Cronis::Stack.new(3)
      end

      it 'should put item at the top' do
        expect(@stack.push(100)).to eq 100
        expect(@stack.peek).to eq 100
      end
    end

    context 'when stack is overflowed' do
      before(:all) do
        @stack = Cronis::Stack.new(3)
        3.times { @stack.push(1) }
      end

      it 'should raise an exception' do
        expect { @stack.push(4) }.to raise_error('Stack overflow') 
      end
    end
  end

  context '#pop' do
    context 'when stack is empty' do
      before(:all) do
        @stack = Cronis::Stack.new(3)
      end

      it 'should raise an exception' do
        expect { @stack.pop }.to raise_error('Stack is empty') 
      end
    end

    context 'when stack has items' do
      before(:all) do
        @stack = Cronis::Stack.new(3)
        @stack.push(4)
      end

      it 'should return top value' do
        expect(@stack.pop).to eq 4
        expect(@stack.is_empty?).to eq true
      end
    end
  end

  context '#peek' do
    context 'when stack is empty' do
      before(:all) do
        @stack = Cronis::Stack.new(3)
      end

      it 'should raise an exception' do
        expect { @stack.pop }.to raise_error('Stack is empty') 
      end
    end

    context 'when stack has items' do
      before(:all) do
        @stack = Cronis::Stack.new(3)
        @stack.push(4)
      end

      it 'should return top value' do
        expect(@stack.peek).to eq 4
        expect(@stack.is_empty?).to eq false
        expect(@stack.to_a).to eq [4]
      end
    end
  end
end
