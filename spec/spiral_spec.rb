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

  it 'creates a 10x10 spiral starting at 10' do
    expect(Spiral.create(10, 10)).to eq [[10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
                                         [45, 46, 47, 48, 49, 50, 51, 52, 53, 20],
                                         [44, 73, 74, 75, 76, 77, 78, 79, 54, 21],
                                         [43, 72, 93, 94, 95, 96, 97, 80, 55, 22],
                                         [42, 71, 92, 105, 106, 107, 98, 81, 56, 23],
                                         [41, 70, 91, 104, 109, 108, 99, 82, 57, 24],
                                         [40, 69, 90, 103, 102, 101, 100, 83, 58, 25],
                                         [39, 68, 89, 88, 87, 86, 85, 84, 59, 26],
                                         [38, 67, 66, 65, 64, 63, 62, 61, 60, 27],
                                         [37, 36, 35, 34, 33, 32, 31, 30, 29, 28]]
  end
end