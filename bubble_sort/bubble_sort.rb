def bubble_sort(array)
  array_length = array.size # use this to set upper-bound loop
  array_already_sorted = false # use this to determine if list is sorted before or during pass throughs
  array_pass_thru_iteration = 1 # use this to indicate how many times to execute/pass-through the for-loop

  until array_already_sorted || (array_pass_thru_iteration == array_length) # continue unless the list is sorted or the program went though full n-1 pass throughs
    no_swaps_counter = 0 # use this to indicate if no swaps was made during the for-loop
    for i in 0...array_length - array_pass_thru_iteration # loop from array start through to unsorted elements and ignore already sorted elements at the end
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      else
        no_swaps_counter += 1 # increment if no swap through this loop iteration
        break array_already_sorted = true if no_swaps_counter == (array_length - array_pass_thru_iteration) # break out of for-loop if counter equals the amount of times we looped through and no swap was made to prevent next unnecessary pass through
      end
    end
    array_pass_thru_iteration += 1 # increment to pass through another for loop
  end

  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([1,2,3,4,5])
p bubble_sort([2,3,4,5,1])
