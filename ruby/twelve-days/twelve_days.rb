require "pry"
class TwelveDays

  def self.day_lyrics
    [
      ["first", "a Partridge in a Pear Tree."],
      ["second", "two Turtle Doves"],
      ["third", "three French Hens"],
      ["fourth", "four Calling Birds"],
      ["fifth", "five Gold Rings"],
      ["sixth", "six Geese-a-Laying"],
      ["seventh", "seven Swans-a-Swimming"],
      ["eighth", "eight Maids-a-Milking"],
      ["ninth", "nine Ladies Dancing"],
      ["tenth", "ten Lords-a-Leaping"],
      ["eleventh", "eleven Pipers Piping"],
      ["twelfth", "twelve Drummers Drumming"]
    ]
  end

  def self.day(day_num)
    "On the #{day_num} day of Christmas my true love gave to me:"
  end

  def self.song
  gifts = []
  final = []
    day_lyrics.each do |day_lyric|
      if gifts.length < 1
        final << "#{day(day_lyric[0])} #{day_lyric[1]}\n"
        gifts << "and #{day_lyric[1]}"
      else
        gifts.unshift(day_lyric[1] + ",")
        final << ("#{day(day_lyric[0])} #{gifts.join(" ")}\n")
      end
    end
    return final.join("\n")
  end

end
