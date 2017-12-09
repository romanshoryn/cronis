require "spec_helper"

RSpec.describe Cronis::Lecture3::Task8 do
  describe '#call' do
    context 'when uniq string is passed' do
      before do
        @service = Cronis::Lecture3::Task8.new
      end

      it 'should return list of strings' do
        expect(@service.call('abcb')).to contain_exactly(
          'abbc', 
          'abcb',
          'acbb',
          "babc",
          "bacb",
          "bbac",
          "bbca",
          "bcab",
          "bcba",
          "cabb",
          "cbab",
          "cbba"
        )
      end
    end
  end
end
