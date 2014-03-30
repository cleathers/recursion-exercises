def bubble_sort(array)
  sorted = false
  while sorted == false
    sorted =true
    array.each_with_index do |number, idx|
      if idx != array.size-1
        if number > array[idx + 1]
          array[idx], array[idx + 1] = array[idx + 1], number
          sorted=false
        end
      end
    end
  end
  array
end