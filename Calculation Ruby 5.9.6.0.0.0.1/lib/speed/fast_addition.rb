class FastAddition

  def self.calculate(a, b)


  end

  def self.split(target, wanted_length)

    digits = target.split("")
    result = []
    buffer = ""
    digits.each_index do |index|

      if index % wanted_length == 0
        buffer = buffer + target[index]
      else

      end

    end

  end

end
begin
  puts FastAddition.split("1234567890", 1)
rescue => err
  puts err.message
ensure

end