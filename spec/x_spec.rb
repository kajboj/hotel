require './x'
describe do
  specify do
    expect(naive(3)).to eq([0, 1, 1, 1, 0, 0, 0, 0, 0, 0])
  end
end
