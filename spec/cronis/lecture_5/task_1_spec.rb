require "spec_helper"

RSpec.describe Cronis::Lecture5::Task1 do
  describe '#call' do
    context 'when random array is passed' do
      before do
        @service = Cronis::Lecture5::Task1.new
      end
  
      it 'should return painted arrya' do
        actual = [
          [0, 0, 0, 0],
          [0, 0, 0, 0],
          [0, 0, 0, 0],
          [0, 0, 0, 0]
        ]

        expect(@service.call(actual, 0)).to eq []
      end
    end
  end

  describe '#is_safe' do
    context 'example 1' do
      before do
        @service = Cronis::Lecture5::Task1.new
      end
  
      it 'should return painted arrya' do
        actual = [
          [0, 0, 0, 0],
          [1, 0, 1, 0],
          [0, 0, 0, 0],
          [0, 0, 0, 0]
        ]

        expect(@service.is_safe(actual, 1, 2)).to eq false
      end
    end

    context 'example 2' do
      before do
        @service = Cronis::Lecture5::Task1.new
      end
  
      it 'should return painted arrya' do
        actual = [
          [1, 0, 0, 0],
          [0, 0, 0, 0],
          [0, 0, 1, 0],
          [0, 0, 0, 0]
        ]

        expect(@service.is_safe(actual, 2, 2)).to eq false
      end
    end

    context 'example 3' do
      before do
        @service = Cronis::Lecture5::Task1.new
      end
  
      it 'should return painted arrya' do
        actual = [
          [0, 0, 0, 0],
          [0, 0, 1, 0],
          [0, 0, 0, 0],
          [1, 0, 0, 0]
        ]

        expect(@service.is_safe(actual, 1, 2)).to eq false
      end
    end
  end
end
