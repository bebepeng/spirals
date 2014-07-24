require 'rspec'
require 'spiral'

describe Spiral do
  it 'creates a 1x1 spiral starting at 2' do
    expect(Spiral.create(2, 1)).to eq [[2]]
  end
  it 'creates a 2x2 spiral starting at 1' do
    expect(Spiral.create(1, 2)).to eq [[1, 2],
                                       [4, 3]
                                      ]
  end
  it 'creates a 3x3 spiral starting at 2' do
    expect(Spiral.create(2, 3)).to eq [[2, 3, 4],
                                       [9, 10, 5],
                                       [8, 7, 6]
                                      ]
  end
  it 'creates a 4x4 spiral starting at 1' do
    expect(Spiral.create(1, 4)).to eq [[1, 2, 3, 4],
                                       [12, 13, 14, 5],
                                       [11, 16, 15, 6],
                                       [10, 9, 8, 7]
                                      ]
  end
end