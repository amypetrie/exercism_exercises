require "pry"
class Series
  attr_reader :numstring

  def initialize(numstring)
    @numstring = numstring
  end

  def slices(length)
    if length > numstring.length
      raise ArgumentError
    else
      rounds = numstring.length - (length - 1)
      final = []
      index = 0
      until index == rounds do
        final << numstring[index, length]
        index = index + 1
      end
      return final
    end
  end

end
