
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

# Alternative solution:
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

# Test cases:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
