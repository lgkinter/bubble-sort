def bubble_sort(sort_arr)
  total_swaps = 1
  while total_swaps > 0
    total_swaps = 0
    sort_arr.each_with_index do |num, index|
      if index == sort_arr.length - 1
        break
      elsif num > sort_arr[index+1]
        sort_arr[index], sort_arr[index+1] = sort_arr[index+1], sort_arr[index]
        total_swaps += 1
      end
    end
  end
  p sort_arr
end

def bubble_sort_by(sort_arr)
  total_swaps = 1
  while total_swaps > 0
    total_swaps = 0
    sort_arr.each_with_index do |num, index|
      if index == sort_arr.length - 1
        break
      elsif yield(num, sort_arr[index+1]) > 0
        sort_arr[index], sort_arr[index+1] = sort_arr[index+1], sort_arr[index]
        total_swaps += 1
      end
    end
  end
  p sort_arr
end

bubble_sort([4,3,78,2,0,2])  #[0,2,2,3,4,78]
bubble_sort([6,5,3,1,8,7,2,4])

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
#["hi", "hey", "hello"]
