# Instructions
# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.

# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.

# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

# Small Scale Example Below

#     #Ruby
#     nums_1 = [1, 2, 4, 5, 8]
#     nums_2 = [2, 3, 5, 7, 9]
#     nums_3 = [1, 2, 5, 8, 9]
#     find_matches(nums_1, nums_2, nums_3)
#     => [2, 5]
   
#     #JavaScript
#     nums1 = [1, 2, 4, 5, 8]
#     nums2 = [2, 3, 5, 7, 9]
#     nums3 = [1, 2, 5, 8, 9]
#     findMatches(nums1, nums2, nums3)
#     => [2, 5]

# Restate the problem: I need to find any integers that exist in ALL three arrays. 
# Clarifying questions: Are there negative values?, Can I use built in Ruby methods? Are integers the only datatypes present in the array? 

# Approach: create arrays and set to variables. - create print statement to check work as I go. 

    nums_1 = [1, 2, 4, 5, 8, 12, 25, 100, 367]
    nums_2 = [2, 3, 5, 7, 9, 12, 53, 489, 1200]
    nums_3 = [1, 2, 5, 8, 9, 12, 30, 78, 99]

    # process: iteration is needed here, else a linked list or binary tree approach. 
    # I'm going to iterate through the first array while checking for matches in the second and third.
    # if the second and third array has that integer that I'm iterating on, then I'll shovel it into another array.

    def find_matches(arr_1, arr_2, arr_3)
      matches = []
      arr_1.each do |integer|
        if arr_2.include?(integer) && arr_3.include?(integer)
          matches << integer
        end
      end
      matches
    end

    p find_matches(nums_1, nums_2, nums_3)