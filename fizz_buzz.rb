# Kata: FizzBuzzBazz
#
# Given n, a positive integer, print a result
# taking into account the following:
#
# When the number is multiple of 3:         Return Fizz
# When the number is multiple of 5:         Return Buzz
# When the number is multiple of 3 and 5:   Return Bazz
# When neither:                             Return n

class FizzBuzzBazz

  def result(n)
    return 'Bazz' if multiple_of_3_and_5?(n)
    return 'Fizz' if multiple_of_3?(n)
    return 'Buzz' if multiple_of_5?(n)
    n
  end

  private

  def multiple_of_3?(n)
    (n % 3).zero?
  end

  def multiple_of_5?(n)
    (n % 5).zero?
  end

  def multiple_of_3_and_5?(n)
    multiple_of_3?(n) && multiple_of_5?(n)
  end

end
