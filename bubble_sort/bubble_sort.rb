def bubble_sort(array)
  p "before: #{array} -> size #{array.size}"

  array_length = array.size
  already_sorted = false
  pass_thru_iteration = 1

  until already_sorted || (pass_thru_iteration == array_length)
    for i in 0...array_length - pass_thru_iteration
      no_swaps_counter = 0
      puts "#{array} -> iteration: #{pass_thru_iteration}"
      print "Loop #{i} - Swap #{array[i]} and #{array[i+1]} -> "
      if array[i] > array[i+1]
        already_sorted = false
        puts "Yes"
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
      else
        puts "No"
        no_swaps_counter += 1
        already_sorted = true if no_swaps_counter == (array_length - pass_thru_iteration)
      end
    end
    pass_thru_iteration += 1
  end

  puts "------------------------"
  p "after: #{array}"
end

#array_one = bubble_sort([4,3,78,2,0,2])
#array_two = bubble_sort([3,5,1,6,7,2,5])
array_three = bubble_sort([5,1,4,2,8])
#array_four = bubble_sort([5,4,3,2,1])
array_five = bubble_sort([1,2,3,4,5])
#array_six = bubble_sort([2,3,4,5,1])
