require('./lib/scrabble')

stick_boy = Word.new(File.read('lib/stick_boy.txt').split.join)
sonnet_1 = Word.new(File.read('lib/sonnet_1.txt').split.join)
stick_boy_points = stick_boy.scrabble
sonnet_1_points = sonnet_1.scrabble

stick_boy_points > sonnet_1_points ? (puts 'Stick Boy wins') : (puts 'Sonnet wins')
