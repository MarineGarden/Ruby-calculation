require_relative 'expression.rb'
require_relative 'section.rb'

class End

  def self.remove(array)

    array.collect {|item| Expression.to_s(item).match(/\d+/) ? (ok = item[0...-1*Section::LENGTH]).nil? ? item : ok : item }

  end

  def self.keep(array)


    array.collect {|item| Expression.to_s(item).match(/\d+/) ? (ok = take(item)).nil? ? item : ok : item }

  end

  #need to rename this method
  def self.take(string)

    string[(-1)*Section::LENGTH, Section::LENGTH]

  end

end