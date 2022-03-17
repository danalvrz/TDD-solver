class Solver
  def factorial(number)
    x = 1
    result = 1
    return 'The factorials of negative integers cannot be computed!' if number.negative?
    while x < number
        x += 1
        result = result * x
    end
    result
  end

  def reverser(word); end

  def fizz_buzz(nnumber); end
end
