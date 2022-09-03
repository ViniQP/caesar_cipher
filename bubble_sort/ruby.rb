def bubble_sort(array)
  unsorted = true
  array_length = array.length - 1

  while unsorted
    for index in 0...(array_length)
      if array[index] > array[index + 1] 
        swapper = array[index]
        array[index] = array[index + 1]
        array[index + 1] = swapper
      end
    end

    array_length -= 1
    if array_length == 0
      unsorted = false
    end
  end
  array
end


array = [4,3,78,2,0,2]
bubble_sort(array)