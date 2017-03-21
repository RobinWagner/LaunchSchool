def swap_name(name)
  name.split.reverse.join(', ')
end

# Test case
p swap_name('Joe Roberts') == 'Roberts, Joe'
