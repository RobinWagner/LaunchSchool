VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(string_array)
  result = []
  string_array.each do |string|
    string_new = string.chars.select { |char| !VOWELS.include?(char.downcase) }
    result << string_new.join('')
  end
  result
end

# Alternative solution
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

# Test cases
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
