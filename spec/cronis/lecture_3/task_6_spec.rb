require "spec_helper"

RSpec.describe Cronis::Lecture3::Palindrom do
  describe '#call' do
    context 'when correct string is passed' do
      before do
        @service = Cronis::Lecture3::Palindrom.new
      end
  
      it 'should display value through comas' do
        expect(@service.call('abba')).to eq true
      end

      it 'should display value through comas' do
        expect(@service.call('rrorr')).to eq true
      end
    end

    context 'when incorrect string is passed' do
      before do
        @service = Cronis::Lecture3::Palindrom.new
      end
  
      it 'should display value through comas' do
        expect(@service.call('roma')).to eq false
      end
    end
  end
end
