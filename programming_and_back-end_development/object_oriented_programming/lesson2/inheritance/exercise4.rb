# Method lookup path

# The method lookup path is the order in which Ruby will traverse the class
# hierarchy to look for methods to invoke.

# For example, say you have a Bulldog object called bud and you call: bud.swim.
# Ruby will first look for a method called swim in the Bulldog class, then
# traverse up the chain of super-classes; it will invoke the first method swim
# and stop its traversal.

# In our simple class hierarchy, it's pretty straight forward. Things can get
# complicated in larger libraries or frameworks. To see the methods lookup path,
# we can use the .ancestors class method.

class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end


class Dog < Pet
  def speak
    'bark!'
  end

  def fetch
    'fetching!'
  end

  def swim
    'swimming!'
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

p Bulldog.ancestors     # => [Bulldog, Dog, Pet, Object, Kernel, BasicObject]

# The ancestors method returns an array and all classes sub-class from Object.
