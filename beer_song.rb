require_relative 'book_keeping'
class BeerSong

  def verse(verse)
  	case verse
  	when 0
  	  "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  	when 1
  	  "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
  	when 2
  	  "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
  	else
  	  "#{verse} bottles of beer on the wall, #{verse} bottles of beer.\nTake one down and pass it around, #{verse -1} bottles of beer on the wall.\n"
    end
  end

  def verses(verse_one, verse_two)
  	output = ""
  	verse_one.downto(verse_two).each do |i|
  	 output << "#{verse(i)}"
    end
    return output
  end

end