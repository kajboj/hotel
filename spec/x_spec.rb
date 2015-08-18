require './x'
describe do
  specify do
    expect(naive(3)).to eq([0, 1, 1, 1, 0, 0, 0, 0, 0, 0])
  end

  specify do
    expect(naive(13)).to eq([1, 6, 2, 2, 1, 1, 1, 1, 1, 1])
  end

  specify do
    expect(naive(763)).to eq(
      [146, 257, 257, 257, 256, 256, 250, 210, 146, 146])
  end
end
