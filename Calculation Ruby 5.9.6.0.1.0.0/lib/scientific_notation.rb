class ScientificNotation

  attr_reader :coefficient
  attr_reader :exponent

  def initialize(number)

    if(number.split(".").length == 1)

      @coefficient = number.slice(0).concat(".").concat(number.slice(1...number.length))

    elsif (number.split(".").length == 2)

      allDigits = number.split(".").join
      initialDigit = allDigits.slice(0)
      @coefficient = initialDigit == "0" ? "Oh no." : initialDigit.concat(".").concat(allDigits.slice(1...number.length))
      @exponent = number.split(".")[0].length - 1

    end

  end

  def self.get(number)


  end

end
begin

  test = ScientificNotation.new("31234")
  puts test.coefficient

rescue => err
  puts err.message
ensure

end