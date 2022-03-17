require 'rspec'
require './solver'

describe 'Solver' do
  before :each do
    @solver = Solver.new
  end

  describe 'factorial method' do
    it 'takes one number as argument and returns the factorial for that number' do
      expect(@solver.factorial(10)).to eq 3_628_800
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

  describe 'fizz_buzz method' do
    it 'returns fizz if number is divisible by 3' do
      expect(@solver.fizz_buzz(6)).to eq 'fizz'
    end

    it 'returns buzz if number is divisible by 5' do
      expect(@solver.fizz_buzz(10)).to eq 'buzz'
    end

    it 'returns fizzbuzz if number is divisible by 3 and 5' do
      expect(@solver.fizz_buzz(45)).to eq 'fizzbuzz'
    end

    it 'returns number given if is not divisible by 3 nor 5' do
      expect(@solver.fizz_buzz(7)).to eq 7
    end
  end
end
