require 'spec_helper'

describe DataFinder do
  it 'Procura valores na lista e retorna multiplicação' do
    list = [2084, 100, 222]
    expect(DataFinder.new.find_and_multiply(list)).to eq 208400
  end

  it 'Procura valores na lista e retorna multiplicação' do
    list = [222, 100, 2084]
    expect(DataFinder.new.find_and_multiply(list)).to eq 208400
  end

  it 'Procura valores na lista e retorna multiplicação' do
    list = [2217, 733, 217, 1230, 3, 4, 233, 1513, 1770]
    expect(DataFinder.new.find_and_multiply(list)).to eq 516561
  end

  it 'Procura valores na lista e retorna multiplicação' do
    list = [135, 614, 12, 755, 346, 634, 21, 1661, 2739, 51, 677, 333]
    expect(DataFinder.new.find_and_multiply(list)).to eq 2067945
  end
end
