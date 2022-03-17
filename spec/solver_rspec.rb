require 'rspec'
require './solver'

describe 'Solver' do
  before :each do
    @solver = Solver.new
  end

  describe 'factorial method' do
    it 'takes one number as argument and returns the factorial for that number' do
      expect(@solver.factorial(5)).to eq 120
    end
  end
end
