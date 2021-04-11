require 'spec_helper'

describe 'SequenceReader' do
  it 'Recebe sequencia inicial e número, depois retorna sequencia final' do
    sequence = '2'
    multiplier = 1

    expect(SequenceReader.new.read(sequence, multiplier)).to eq '12'
  end

  it 'Recebe sequencia inicial e número, depois retorna sequencia final' do
    sequence = '111'
    multiplier = 1

    expect(SequenceReader.new.read(sequence, multiplier)).to eq '31'
  end

  it 'Recebe sequencia inicial e número, depois retorna sequencia final' do
    sequence = '1'
    multiplier = 3

    expect(SequenceReader.new.read(sequence, multiplier)).to eq '1211'
  end

  it 'Recebe sequencia inicial e número, depois retorna sequencia final' do
    sequence = '123523'
    multiplier = 4

    expect(SequenceReader.new.read(sequence, multiplier)).to eq '11131221121321232115132112132113'
  end

  it 'Recebe sequencia inicial e número, depois retorna sequencia final' do
    sequence = '234567'
    multiplier = 5

    expect(SequenceReader.new.read(sequence, multiplier)).to eq '1113122112111312111213122114111312211511131221161113122117'
  end

  it 'Recebe sequencia inicial e número, depois retorna sequencia final' do
    sequence = '23'
    multiplier = 11

    expect(SequenceReader.new.read(sequence, multiplier)).to eq '1113122113121113222123211211131211121332211211131221131211132221232112111312111213322113'
  end
end
