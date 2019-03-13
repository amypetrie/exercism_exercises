require "pry"
class Acronym

  def self.abbreviate(word_list)
    array = word_list.split(" ")
    array.inject("") do |memo, word|
      memo = memo + word.chr
      memo
    end
  end

end
