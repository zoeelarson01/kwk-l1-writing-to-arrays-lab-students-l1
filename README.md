# Fixing the Rainbow

## Overview

Now that we've practiced reading arrays, we will look at how to edit them and
add to them.

## The Rainbow

It's broken! Run `learn` or `rspec` in your terminal. I'm not sure what
happened, but the colors of the rainbow are wrong! Right now, our rainbow is an
array with the following colors:

```ruby
rainbow_colors = [
  "yellow",
  "default",
  "light_cyan"
]
```

When we run our tests, these colors are printed out in order using a Ruby gem,
_colorize_. Our goal is to change this array so that it becomes "red",
"light_red", "light_yellow", "green", and "blue".  When printed, this will get
us the closest to a completed rainbow we can get in our terminal.

### Replacing Values in an Array

In an array of values like `rainbow_colors`, each value can be thought of as its
own _variable_.  We can do something like this in Ruby:

```ruby
my_variable = 1
puts my_variable # outputs 1
my_variable = "hello"
puts my_variable # outputs "hello"
```

And similarly, we can change values within an array too:

```ruby
my_array[0] = 1
puts my_array[0] # outputs 1
my_array[0] = "hello"
puts my_array[0] # outputs "hello", the new value for my_array[0]
```

With this ability, we can start to fix our rainbow by rewriting the individual
values in the array.

### Challenge 1: Editing Single Values in the Rainbow

In the file `editing_arrays.rb`, write a solution for the method
`change_rainbow_colors` that changes the current three values, "yellow",
"default", and "light_cyan" to the correct colors "red", "light_red",
"light_yellow". Use the index of these values to make changes.

You should see the rainbow change to these colors when running tests.

### Adding, or Pushing, Values into an Array

So far so good.  We can use the index to modify existing values, but we're still
short a few colors, and need to add "green" and "blue".

_We could_ use index values to do this too.  So for example, something like:

```ruby
my_array = ["a","b","c","d","e"]
my_array[5] = "f"
my_array # returns ["a","b","c","d","e","f"]
```

 However, we would need to always keep track of how big the array is in order
to use indexes. Fortunately, arrays have a built in method to take care of
this, `push`:

```ruby
my_array = ["a","b","c","d","e"]
my_array.push "f"
my_array # returns ["a","b","c","d","e","f"]
```

The `push` method will _always_ add values to the end of an array. This is such
a common part of storing related data in programs, that Ruby arrays have a
second way to write the method, `<<`:

```ruby
my_array = ["a","b","c","d"]
my_array << "e"
my_array # returns ["a","b","c","d","e"]
```

### Challenge 2: Pushing Two New Values to the Rainbow

Write a solution to the second method in `editing_arrays.rb`, `add_colors`, that
first adds "green", then "blue" to the `rainbow_colors` array.  

When completed, the rainbow in your terminal should display something close to
this:

![a rainbow](https://ironboard-learn.s3.amazonaws.com/rainbow.png)

# Thanks for fixing the rainbow!
