class Word
  def initialize(str)
    @word = str
  end
  def scrabble()
    points_table = {
      1 => ["a", "e", "i", "o", "u", "l", "r", "s", "t"],
      2 => ["d", "g"],
      3 => ["b", "c", "m", "p"],
      4 => ["f", "h", "v", "w", "y"],
      5 => ["k"],
      8 => ["j", "x"],
      10 => ["q", "z"]}
    letters = @word.split("")
    letters.each do |letter|
      if ( points_table[1].include?(letter))
        return 1
      elsif ( points_table[2].include?(letter))
        return 2
      elsif ( points_table[3].include?(letter))
        return 3
      end
    end
  end
end