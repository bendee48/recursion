def merge_sort(list)
  return list if list.size < 2
  a = merge_sort(list[0..(list.size)/2-1])
  b = merge_sort(list[(list.size)/2..-1])
  merge(a,b)
end

def merge(a,b)
  arr = []
  until a.empty? && b.empty?
    if a[0].nil?
      arr << b.shift
    elsif b[0].nil?
      arr << a.shift
    elsif a[0] <= b[0]
      arr << a.shift
    else
      arr << b.shift
    end
  end
  arr
end

p merge_sort([10001,2,6,9,33,7,5,4,29,5])