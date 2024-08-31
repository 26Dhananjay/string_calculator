class StringCalculation
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    delimiter = ","
	if numbers.start_with?("//")
		delimiter, numbers = numbers[2..].split("\n", 2)
	end

    numbers = numbers.gsub("\n", delimiter)
    num_arr = numbers.split(delimiter).map(&:to_i)

    negative_nums = num_arr.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negative_nums.join(',')}" unless negative_nums.empty?

    puts num_arr.sum
    num_arr.sum

  end
end
