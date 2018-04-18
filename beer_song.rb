require_relative 'book_keeping'
class BeerSong

  def verse(verse)
    @part_1 = "bottles of beer"
    @part_2 = "down and pass it around"
    @part_3 = "bottle of beer"
    @part_4 = "on the wall"
    @part_5 = "Take one"
    @part_6 = "#{@part_1} #{@part_4}"
    @part_7 = "no more"
  	case verse
  	when 0
  	  "#{@part_7.capitalize} #{@part_6}, #{@part_7} #{@part_1}.\nGo to the store and buy some more, 99 #{@part_6}.\n"
  	when 1
  	  "1 #{@part_3} #{@part_4}, 1 #{@part_3}.\nTake it #{@part_2}, #{@part_7} #{@part_6}.\n"
  	when 2
  	  "2 #{@part_6}, 2 #{@part_1}.\n#{@part_5} #{@part_2}, 1 #{@part_3} #{@part_4}.\n"
  	else
  	  "#{verse} #{@part_6}, #{verse} #{@part_1}.\n#{@part_5} #{@part_2}, #{verse -1} #{@part_6}.\n"
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