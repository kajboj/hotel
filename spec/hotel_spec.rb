require './hotel'

describe '#fast' do
  def check(number)
    expect(fast(number)).to eq(naive(number))
  end

  specify do
    expect(naive(3)).to eq([0, 1, 1, 1, 0, 0, 0, 0, 0, 0])
  end

  specify do
    expect(naive(13)).to eq([1, 6, 2, 2, 1, 1, 1, 1, 1, 1])
  end

  specify do
    check(3)
  end

  specify do
    check(10)
  end

  specify do
    check(13)
  end

  specify do
    check(27)
  end

  specify do
    check(79)
  end

  specify do
    check(100)
  end

  specify do
    check(101)
  end

  specify do
    check(763)
  end

  specify do
    check(9999)
  end

  specify do
    check(10000)
  end

  specify do
    (1..1000).to_enum.each do |n|
      check(n)
    end
  end

  specify do
    fast(10**19-1)
  end
end

