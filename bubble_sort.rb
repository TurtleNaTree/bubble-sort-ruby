def bubble_sort(list)
    puts "The unsorted list is #{list}"
    swapped = false
    helper_value = 0 #used to copy numbers that will be swapped
    loop do
        list.each_index{ |index|
            unless index + 1 == list.length
                if list[index] > list[index + 1]
                    helper_value = list[index]
                    list[index] = list[index + 1]
                    list[index + 1] = helper_value
                    swapped = true
                end
            end
        }

        swapped ? swapped = false : break
    end

    puts "The sorted list is #{list}"
    
end

unsorted = [4,3,78,2,0,2]
bubble_sort(unsorted)