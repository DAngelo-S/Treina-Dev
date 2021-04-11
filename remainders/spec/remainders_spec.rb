require 'spec_helper'

describe 'Remainders' do
  it 'Recebe string e retorna soma de números que tem divisão com resto zero' do
    values = '2 7 15 11 5'

    expect(Remainders.new.calculate(values)).to eq 20
  end

  it 'Recebe string e retorna soma de números que tem divisão com resto zero' do
    values = '3 2 11 9 17'

    expect(Remainders.new.calculate(values)).to eq 12
  end

  it 'Recebe string e retorna soma de números que tem divisão com resto zero' do
    values = '321 151 511 203 180 60 32 77'

    expect(Remainders.new.calculate(values)).to eq 240
  end

  it 'Recebe string e retorna soma de números que tem divisão com resto zero' do
    values = '877 20 3653 139 1309 1307 323 2466 133 260'

    expect(Remainders.new.calculate(values)).to eq 280
  end
end
