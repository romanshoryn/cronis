require "spec_helper"

RSpec.describe Cronis::Lecture3::MaxValue do
  describe '#call' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture3::MaxValueByDevision.new
      end
  
      it 'should return max value' do
        expect(@service.call([1, 4, 22, -1])).to eq 22
      end
    end

    context 'when empty array is passed' do
      before do
        @service = Cronis::Lecture3::MaxValueByDevision.new
      end
  
      it 'should return nil value' do
        expect(@service.call([])).to eq nil
      end
    end

    context 'when array with one value is passed' do
      before do
        @service = Cronis::Lecture3::MaxValueByDevision.new
      end
  
      it 'should return the value' do
        expect(@service.call([1])).to eq 1
      end
    end
  end
end
