require_relative 'end.rb'
require_relative 'length.rb'
require_relative 'section.rb'
require_relative 'integer.rb'

class Addition

  def self.calculate(a, b)

    Integer.get(calculate_in_parts([a, b]))

  end

  def self.calculate_in_parts(numbers)

    remain(find_excess(numbers)) + answer(numbers)

  end

  def self.find_excess(numbers)

    add_at_end(End.keep(numbers))[1] == "1" ? numbers[0, 2].push(pow.to_s) : numbers[0, 2]

  end

  def self.add_at_end(numbers)

    (sum = get_sum_of_end(numbers)) >= pow ? [format((sum - pow).to_s), "1"] : [format(sum.to_s), "0"]

  end

  def self.pow

    10**len

  end

  def self.len

    Section::LENGTH

  end

  def self.get_sum_of_end(numbers)

    numbers.sum { |n| n.to_i}

  end

  def self.format(number)

    "0"*[len - number.length, 0].max + number

  end

  def self.remain(numbers)

    numbers.length > 2 || Length.every?(numbers, len + 1) ? backtrack(numbers) : finish(numbers)

  end

  def self.backtrack(numbers)

    calculate_in_parts(End.remove(numbers))

  end

  def self.finish(numbers)

    find_excess(numbers).length > 2 ? "1" : ""

  end

  def self.answer(numbers)

    add_at_end(End.keep(numbers))[0]

  end

end
begin

  test_original_start = Time.new
  test_original_answer = "0"
  for i in 0...1000
    test_original_answer = (test_original_answer.to_i + 11111111111111111111111111111111111).to_s
  end
  puts test_original_answer
  test_original_finish = Time.new
  puts (test_original_finish - test_original_start).to_s

  test_mine_start = Time.new
  test_mine_answer = "0"
  for i in 0...1000
    test_mine_answer = Addition.calculate(test_mine_answer, "11111111111111111111111111111111111")
  end
  puts test_mine_answer
  test_mine_finish = Time.new
  puts test_mine_finish - test_mine_start

  puts test_original_answer == test_mine_answer

  puts ["1", "2", "3"].sum { |n| n.to_i }

rescue => err
  puts err.message
ensure

end