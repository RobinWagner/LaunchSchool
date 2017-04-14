BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  up_string = word.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

# Test cases
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
