require 'spec_helper'

describe 'Spiral' do
  it 'recebe uma matriz e ordena valores na forma de espiral' do
    matrix = [[1, 2, 3],
              [4, 5, 6]]

    expect(Spirardigrada.new.devour(matrix)).to eq '1 2 3 6 5 4'
  end

  it 'Recebe uma matriz e ordena valores na forma de espiral' do
    matrix = [[1,  2,  3],
              [4,  5,  6],
              [7,  8 , 9],
              [10, 11, 12]]

    expect(Spirardigrada.new.devour(matrix)).to eq '1 2 3 6 9 12 11 10 7 4 5 8'
  end

  it 'Recebe uma matriz e ordena valores na forma de espiral' do
    matrix = [[1,  2,  3,  4,  5],
              [6,  7,  8,  9,  10],
              [11, 12, 13, 14, 15],
              [16, 17, 18, 19, 20]]
    expect(Spirardigrada.new.devour(matrix)).to eq '1 2 3 4 5 10 15 20 19 18 '\
                                               '17 16 11 6 7 8 9 14 13 12'
  end

  it 'Recebe uma matriz e ordena valores na forma de espiral' do
    matrix = [['A', 'B', 'C', 'D', 'E'],
              ['F', 'G', 'H', 'I', 'J'],
              ['K', 'L', 'M', 'N', 'O'],
              ['P', 'Q', 'R', 'S', 'T']]
    expect(Spirardigrada.new.devour(matrix)).to eq 'A B C D E J O T S R '\
                                               'Q P K F G H I N M L'
  end

  it 'Recebe uma matriz e ordena valores na forma de espiral' do
    matrix = [[1,  2,  3,  4,  5],
              [6,  7,  8,  9,  10],
              [11, 12, 13, 14, 15]]
    expect(Spirardigrada.new.devour(matrix)).to eq '1 2 3 4 5 10 15 14 '\
                                               '13 12 11 6 7 8 9'
  end

  it 'Recebe uma matriz e ordena valores na forma de espiral' do
    matrix = [['0A', '0B', '0C', '0D', '0E', '0F'],
              ['1A', '1B', '1C', '1D', '1E', '1F'],
              ['2A', '2B', '2C', '2D', '2E', '2F'],
              ['3A', '3B', '3C', '3D', '3E', '3F'],
              ['4A', '4B', '4C', '4D', '4E', '4F']]
    expect(Spirardigrada.new.devour(matrix)).to eq '0A 0B 0C 0D 0E 0F 1F 2F 3F '\
                                               '4F 4E 4D 4C 4B 4A 3A 2A 1A '\
                                               '1B 1C 1D 1E 2E 3E 3D 3C 3B '\
                                               '2B 2C 2D'
  end
end
