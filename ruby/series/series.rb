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
      binding.pry
      numstring.slice!(length)
    end
  end

end
