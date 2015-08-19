def naive(max)
  r = [0]*10
  (1..max).to_a.each do |i|
    i.to_s.split('').each do |digit|
      r[digit.to_i] += 1
    end
  end
  r
end

def better(max)
  res = [0]*10
  x = max

  while x > 0 do
    r = x % 10
    d = x / 10
    (1..r).to_enum.each do |digit|
      res[digit] += 1

      if d > 0
        res[d] += 1
      end
    end

    if d > 0
      (1..d).to_enum.each do
        (0..9).to_enum.each do |digit|
          res[digit] += 1
        end
      end

      (1..(d-1)).to_enum.each do |digit|
        res[digit] += 1*10 - 1
      end
    end

    x = d
  end

  res
end
