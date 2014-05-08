def sum(arr)
  ans = 0
  arr.each do { |elt| ans += elt }
  return ans
end

def max_2_sum(arr)
  arr.sort! { |x, y| y <=> x }
  until arr.length >= 2 do
    arr << 0
  end
  return arr[0] + arr[1]
end

def sum_to_n?(arr, n)
  arr.each |elt1| do
    arr.each |elt2| do
      if elt1 != elt2 && elt1 + elt2 == n
        return true
      end
    end
  end
  return false
end
