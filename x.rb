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
  ds = [0]*10
  p = 0

  max.to_s.split('').map(&:to_i).reverse.each do |d|
    (1..d).to_enum.each do |digit|
      res[digit] += 1
      res = res.zip(ds).map {|(x, y)| x+y}
      res[digit] += p
    end


    ds = ds.map {|c| c+1}
    p = d
  end

  res
end
