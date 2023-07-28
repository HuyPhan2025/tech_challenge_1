# Instructions
# In Ruby and JavaScript, there is a built in method/function to flatten arrays, meaning it makes them one-dimensional. Below are examples of both Ruby and JavaScript:

    #Ruby
#     nums = [1, 2, 3, [[4], 5], [[[6]]]]
#     nums.flatten
#     => [1, 2, 3, 4, 5, 6]

#     #JavaScript
#     var nums = [ 0, 1, 2, [ 3, 4 ] ]
#     nums.flat()
#     => [ 0, 1, 2, 3, 4 ]
# Your goal is to recreate this functionality without using the built in method/function. You will be given a deeply nested array, or multi-dimensional array, that will look similar to either of the below:

#     nums = [1, 2, 3, [[4], 5], [[[6]]]]
#     words = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]

# The contents of the array are not significant. Your method/function should take an input of a multi-dimensional array and output a one-dimensional array. More simply put, remove the deeply nested brackets to return a single array.

def flatten(array)
  flatten_array = [] #create to store the flattened elements

  array.each do |element|
    if element.is_a?(Array) # as the iteration go through it check if the element is an Array. If the element is an Array it mean that it's a nested array.
      flatten_array.concat(flatten(element)) #add the elements returned by the recursive call to the "result" array. Concat is use to combine arrays without creating additional level o nesting.
    else
      flatten_array << element # add elements that are not an Array to the "result" array.
    end
  end

  flatten_array #call on the accumulator 
end

nums = [1, 2, 3, [[4], 5], [[[6]]]]
return_array = flatten(nums)
puts return_array.inspect