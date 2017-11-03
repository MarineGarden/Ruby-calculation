class Length

  def self.every?(array, min)

    array.map { |item| item.length >= min}.any?

  end

end