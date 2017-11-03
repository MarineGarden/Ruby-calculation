require './Expression.rb'

class EndRemove

  include Expressable

  def self.from_int_array(target)

    target.collect! {|item| Expressable.to_s(item).match(/\d+/) ? item.chop : item }

  end

end
begin
  target = ["123", "234", true, "", "12"]
  test = EndRemove.from_int_array(target)
  puts test
rescue => err
  puts err.message
ensure

end