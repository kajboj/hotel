def naive(max)
  r = [0]*10
  (1..max).to_a.each do |i|
    i.to_s.split('').each do |digit|
      r[digit.to_i] += 1
    end
  end
  r
end

# add n vectors
def add(*vs)
  vs.first.zip(*vs[1..-1]).map { |a| a.inject(&:+) }
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

def mul(v, s)
  v.map {|x| x*s}
end

def up_to(power)
  if power == 0
    [0] * 10
  else
    bottom = up_to(power-1)
    c = 10**(power-1)
    add(
      bottom,
      mul(bottom, 9), # blocks above bottom
      [c-1] + [c]*9   # padding zeros and leading digits
    )
  end
end

def d(digit, power)
  c = 10**power
  u = up_to(power)
  total = u.inject(&:+)

  add(
    mul(u, digit),            # all the blocks
    mul(ones(1..digit-1), c), # leading digits
    one(digit),
    mul(one(0), (power*c - total)*(digit-1) + power) # padding blocks with zeros
  )
end

def fast(max)
  if max == 0
    [0]*10
  else
    s = max.to_s
    power = s.size-1
    head = s[0].to_i
    tail = s[1..-1].to_i
    remainder = fast(tail)
    remainder_sum = remainder.inject(&:+)

    res = add(
      d(head, power),
      remainder,
      mul(one(head), tail),
      mul(one(0), power*tail - remainder_sum)
    )

    res
  end
end
