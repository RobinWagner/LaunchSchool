def block_word?(word)
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
            ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
            ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  char_count = 0
  to_delete = []
  word.chars.map(&:upcase).each do |char|
    blocks.each do |block|
      if block.include?(char)
        char_count += 1
        to_delete << block
      end
    end
    if char_count > 0
      blocks.delete(to_delete.pop)
    else
      return false
    end
    char_count = 0
  end
  true
end

# Alternative solution
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

# Test cases
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
