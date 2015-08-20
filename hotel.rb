def naive(max)
  r = [0]*10
  (1..max).to_a.each do |i|
    i.to_s.split('').each do |digit|
      r[digit.to_i] += 1
    end
  end
  r
end

def add(*vs)
  vs.first.zip(*vs[1..-1]).map { |a| a.inject(&:+) }
end

def mul(v, s)
  v.map {|x| x*s}
end

def one(digit)
  ones(digit..digit)
end

def ones(range)
  r = [0]*10
  range.to_enum.each do |digit|
    r[digit] = 1
  end
  r
end

def fast(max)
  x = max
  c = 1
  carry = 0
  res = [0]*10

  while x > 0 do
    digit = x % 10
    upper = x / 10

    res = add(
      res,
      mul(ones(1..(digit-1)), c),
      mul(one(digit), carry+1),
      mul(ones(0..10), upper*c)
    )

    if digit == 0
      res = add(res, mul(one(0), -c))
    end

    carry += digit*c
    c = c*10
    x = upper
  end

  res
end

