require('rspec')
require('scrabble')

describe('Word#scrabble') do
  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a letter using our points hash") do
    word = Word.new("b")
    expect(word.scrabble()).to(eq(3))
  end
end