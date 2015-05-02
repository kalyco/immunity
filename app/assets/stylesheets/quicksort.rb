selection sort

what does it do?
splits array into separate arrays until each is a single element

merge sort

what does it do?
splits array by a left and right pointer, chosing a random point to meet

def quicksort(array)
  return array if array.size < 2
  pivot = array.sample
  left, right, sorted = [], [], []
  array.each { |n| n < pivot ? left << n : right << n }
  sorted.push(quicksort(left), pivot, quicksort(right)).flatten!
end

