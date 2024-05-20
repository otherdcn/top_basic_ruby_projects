def bubble_sort(array)
  p "before: #{array} -> size #{array.size}"

  array_length = array.size # use this to set upper-bound loop
  array_already_sorted = false # use this to determine if list is sorted before or during pass throughs
  array_pass_thru_iteration = 1 # use this to indicate how many times to execute/pass-through the for-loop

  until array_already_sorted || (array_pass_thru_iteration == array_length) # continue unless the list is sorted or the program went though full n-1 pass throughs
    no_swaps_counter = 0 # use this to indicate if no swaps was made during the for-loop
    for i in 0...array_length - array_pass_thru_iteration # loop from array start through to unsorted elements and ignore already sorted elements at the end
      puts "#{array} -> iteration: #{array_pass_thru_iteration}"
      print "* Loop #{i+1} - Swap #{array[i]} and #{array[i+1]} -> "
      if array[i] > array[i+1]
        puts "Yes"
        # array_already_sorted = false
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
      else
        puts "No"
        no_swaps_counter += 1 # increment if no swap through this loop iteration
        break array_already_sorted = true if no_swaps_counter == (array_length - array_pass_thru_iteration) # break out of for-loop if counter equals the amount of times we looped through and no swap was made
      end
    end
    array_pass_thru_iteration += 1 # increment to pass through another for loop
  end

  # binding.break
  p "after: #{array}"
  puts "------------------------"
  array
end

array_one = bubble_sort([4,3,78,2,0,2])
array_two = bubble_sort([3,5,1,6,7,2,5])
array_three = bubble_sort([5,1,4,2,8])
array_four = bubble_sort([5,4,3,2,1])
array_five = bubble_sort([1,2,3,4,5])
array_six = bubble_sort([2,3,4,5,1])
