class Split

  def self.keep(string, delimiter, join_token)

    letters = string.split(delimiter)
    result = [letters[0]]
    buffer_index = letters[0].length
    letters.each_index do |index|
      if letters[buffer_index..index].join.match(delimiter)
        result.push(letters[buffer_index..index].join)
        buffer_index = index
        puts "OK"
      end
    end
    result

  end

end
begin
  puts Split.keep("a2s3d4f5e", /\d/).to_s
rescue => err
  puts err.message
ensure

end