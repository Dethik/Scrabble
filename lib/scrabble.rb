class Word
  def initialize(str)
    @word = str.downcase()
  end
  def scrabble()
    current_points = 0
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
      points_table.each() do |points, letter_array|
        if (letter_array.include?(letter))
          current_points += points
        end
      end
    end
    current_points
  end
end