class Word
  def initialize(str)
    @word = str
  end
  def scrabble()
    letters = @word.split("")
    letters.each do |letter|
      if (letter == "a")
        return 1
      end
    end
  end
end