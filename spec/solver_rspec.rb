require 'rspec'
require './solver'

describe 'Solver' do
  before :each do
    @solver = Solver.new
  end

  describe 'factorial method' do
    it 'takes one number as argument and returns the factorial for that number' do
      expect(@solver.factorial(10)).to eq 3628800
    end

    it 'returns 1 if N is equal to zero' do
        expect(@solver.factorial(0)).to eq 1
    end

    it 'raises en error if N < 0' do
        number = rand(1..10) * -1
        expect(@solver.factorial(number)).to eq 'The factorials of negative integers cannot be computed!'
    end
  end

  describe 'reverser method' do
    it 'takes a word as argument and returns it reversed' do
      expect(@solver.reverser('hello')).to eq 'olleh'
    end
  end

end
