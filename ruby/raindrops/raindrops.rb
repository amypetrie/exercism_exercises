require "pry"
class Raindrops

  def self.sounds
    {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }
  end

  def self.convert(num)
    final = sounds.inject("") do |memo, sound|
        memo = memo + sound[1] if num % sound[0] == 0
        memo
      end
    return final if final.length != 0
    return num.to_s
  end

end
