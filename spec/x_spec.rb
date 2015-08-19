require './x'

describe do
  specify do
    expect(naive(3)).to eq([0, 1, 1, 1, 0, 0, 0, 0, 0, 0])
  end

  specify do
    expect(better(3)).to eq([0, 1, 1, 1, 0, 0, 0, 0, 0, 0])
  end

  specify do
    expect(naive(13)).to eq([1, 6, 2, 2, 1, 1, 1, 1, 1, 1])
  end

  specify do
    expect(better(13)).to eq([1, 6, 2, 2, 1, 1, 1, 1, 1, 1])
  end

  specify do
    expect(naive(27)).to eq([2, 13, 11, 3, 3, 3, 3, 3, 2, 2])
  end

  specify do
    expect(better(27)).to eq([2, 13, 11, 3, 3, 3, 3, 3, 2, 2])
  end

  specify do
    expect(naive(79)).to eq([7, 18, 18, 18, 18, 18, 18, 18, 8, 8])
  end

  specify do
    expect(better(79)).to eq([7, 18, 18, 18, 18, 18, 18, 18, 8, 8])
  end

  specify do
    expect(naive(100)).to eq([11, 21, 20, 20, 20, 20, 20, 20, 20, 20])
  end

  specify do
    expect(better(100)).to eq([11, 21, 20, 20, 20, 20, 20, 20, 20, 20])
  end

  specify do
    expect(naive(101)).to eq([12, 23, 20, 20, 20, 20, 20, 20, 20, 20])
  end

  specify do
    expect(better(101)).to eq([11, 22, 20, 20, 20, 20, 20, 20, 20, 20])
  end

  specify do
    expect(naive(763)).to eq(
      [146, 257, 257, 257, 256, 256, 250, 210, 146, 146])
  end
end

describe 'up_to' do
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
