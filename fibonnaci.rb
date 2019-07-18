def fibs(num)
  arr = [0,1]
  (num-2).times { arr << arr[-1] + arr[-2] }
  arr
end

p fibs(8)

def fibs_rec(num, arr=[0,1])
  return arr if num < 3
  fibs_rec(num-1, arr << arr[-2] + arr[-1])
end

p fibs_rec(8)


