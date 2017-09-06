require_relative 'fizzlefade'
require 'set'

RSpec.describe Fizzlefade do
  let(:screen) do
    Array.new(320) { Array.new(200,false) }
  end

  it 'always yields an x position between 0 and 319' do
    described_class.fizzle_320_by_200 do |x,y|
      expect((0...320).cover?(x)).to eq true
    end
  end

  it 'always yields a y position between 0 and 199' do
    described_class.fizzle_320_by_200 do |x,y|
      expect((0...200).cover?(y)).to eq true
    end
  end

  it 'always yields a unique position' do
    described_class.fizzle_320_by_200 do |x,y|
      expect(screen[x][y]).to eq false
      screen[x][y] = true
    end
  end

  it 'iterates over every single position' do
    described_class.fizzle_320_by_200 do |x,y|
      screen[x][y] = true
    end

    (0...(screen.size)).each do |x|
      (0...(screen[0].size)).each do |y|
        expect(screen[x][y]).to eq true
      end
    end
  end
end
