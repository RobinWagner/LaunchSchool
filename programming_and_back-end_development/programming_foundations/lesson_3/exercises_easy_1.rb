# Question 1

# => 1
# => 2
# => 2
# => 3
# Prints out unchanged array since uniq method is not destructive (unlike uniq!)

# Question 2

# ! ("bang") after a method name is frequently used to showcase a destructive method.
# ! together with a Boolean expression means "not"
# ? after a method name is conventionally used to signify Boolean methods
# ? is also used in the ternary operator

# != means not equal is used in boolean expressions
# ! before something means 'not'. It reverses the Boolean value of an expression (e.g. !true == false)
# ! after a method is used to show a destructive method which mutates the caller (convention)
# ? before something is used in a ternary expression to show the 'if' branch
# ? after something is used to show a Boolean method
# !! before something is used to display the Boolean value of the expression

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# Question 4

# delete_at(1) deletes the array value at index 1
# delete(1) searches and deletes the value 1 in the array

# Question 5

(10..100).cover?(42)
# Alternative: 42.between?(10, 100)
