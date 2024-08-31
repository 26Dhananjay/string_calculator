class StringCalculation
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    delimiter = ","
    num_arr = numbers.split(delimiter).map(&:to_i)
    puts num_arr.sum
    num_arr.sum

  end
end
