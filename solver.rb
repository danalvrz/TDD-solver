class Solver
  def factorial(number)
    x = 1
    result = 1
    return 'The factorials of negative integers cannot be computed!' if number.negative?

    while x < number
      x += 1
      result *= x
    end
    result
  end

  def reverser(word)
    word.reverse
  end

  def fizz_buzz(number); end
end
