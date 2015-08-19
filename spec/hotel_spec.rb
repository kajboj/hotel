require './hotel'

describe '#fast' do
  specify do
    expect(naive(3)).to eq([0, 1, 1, 1, 0, 0, 0, 0, 0, 0])
  end

  specify do
    expect(naive(13)).to eq([1, 6, 2, 2, 1, 1, 1, 1, 1, 1])
  end

  specify do
    expect(fast(3)).to eq(naive(3))
  end

  specify do
    expect(fast(13)).to eq(naive(13))
  end

  specify do
    expect(fast(27)).to eq(naive(27))
  end

  specify do
    expect(fast(79)).to eq(naive(79))
  end

  specify do
    expect(fast(100)).to eq(naive(100))
  end

  specify do
    expect(fast(101)).to eq(naive(101))
  end

  specify do
    expect(fast(763)).to eq(naive(763))
  end

  specify do
    expect(fast(9999)).to eq(naive(9999))
  end

  specify do
    fast(10*18)
  end
end

describe '#up_to' do
  specify do
    expect(up_to(0)).to eq(naive(0))
  end

  specify do
    expect(up_to(1)).to eq(naive(9))
  end

  specify do
    expect(up_to(2)).to eq(naive(99))
  end

  specify do
    expect(up_to(3)).to eq(naive(999))
  end
  
  specify do
    expect(up_to(4)).to eq(naive(9999))
  end
end

describe '#main_chunk' do
  specify do
    expect(main_chunk(3, 0)).to eq(naive(3))
  end

  specify do
    expect(main_chunk(3, 1)).to eq(naive(30))
  end

  specify do
    expect(main_chunk(7, 2)).to eq(naive(700))
  end

  specify do
    expect(main_chunk(5, 3)).to eq(naive(5000))
  end
end
