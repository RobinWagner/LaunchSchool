BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  index_block = []
  string.chars.each do |char|
    if included_in_block?(char)
      index_block << calculate_index_block(char)
    end
  end
  index_block.uniq == index_block
end

def included_in_block?(char)
  BLOCKS.each do |block|
    return true if block.include?(char)
  end
  false
end

def calculate_index_block(char)
  index_block = nil
  BLOCKS.each_with_index do |block, idx|
    index_block = idx if block.include?(char)
  end
  index_block
end

# Test cases
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
