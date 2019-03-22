require "pry"

class Isogram

  def self.isogram?(input)
    final = true
    tracker = input.gsub(/(\s-)/, '').downcase.split('').inject(Hash.new(0)) do |memo, letter|
      return final if final == false
      memo[letter] += 1
      final = false if memo[letter] > 1
      memo
    end
    # binding.pry
    return final
  end

end
