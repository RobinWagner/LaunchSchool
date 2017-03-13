
def block_word?(word)
  spelling_blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
                     ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
                     ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  word.split('').each do |letter|
    if spelling_blocks.flatten.include?(letter.upcase)
      spelling_blocks.each { |block| spelling_blocks.delete(block) if block.include?(letter.upcase) }
    else
      return false
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
