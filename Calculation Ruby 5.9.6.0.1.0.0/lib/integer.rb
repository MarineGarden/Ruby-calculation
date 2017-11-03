class Integer

  def self.get(string)

    string.slice(/[1-9]\d*|0$/)

  end

end