require 'spec_helper'

describe 'Sequence' do
  it 'Recebe lista e retorna nome com sequencia ordenada mais longa.' do
    list = ['NELSON:1 2 3 8']

    expect(Sequence.new.count_ordered(list)).to eq 'NELSON:1 3'
  end

  it 'Recebe lista e retorna nome com sequencia ordenada mais longa.' do
    list = ['ANA:1 2 12 3 5 4 13',
            'PAULO:10 9 5 12 7']

    expect(Sequence.new.count_ordered(list)).to eq 'ANA:2 5'
  end

  it 'Recebe lista e retorna nome com sequencia ordenada mais longa.' do
    list = ['APOLONIO:1 2',
            'CHICO:1 2 3 5 6 7 8',
            'LETICIA:1 2 3 4 7 8']

    expect(Sequence.new.count_ordered(list)).to eq 'CHICO:3 4'
  end

  it 'Recebe lista e retorna nome com sequencia ordenada mais longa.' do
    list = ['ANA:30 1 3 24 14 27 2 26 25 28',
            'PAULO:22 9 21 7 8 20 3',
            'JUAREZ:9 1 12 16 5 11 22 23',
            'MARIA:30 26 1 29 6 28 27 2 4 5 3',
            'AGNES:1 3 5 7 9 11 13 20 4 2 15 25 27 19']

    expect(Sequence.new.count_ordered(list)).to eq 'MARIA:5 6'
  end

  it 'Recebe lista e retorna nome com sequencia ordenada mais longa.' do
    list = ['FABIA:1 2 3 4 5 10 11 12 13 20 21 22 27',
            'DANIELO:30 29 28 27 26 3 4 5 6 1 10 12',
            'FABRICIA:12 15 22 1 5 2 9 28 16 12',
            'ALOIZIA:20 18 26 4 7 16 29 28 27 15 1']

    expect(Sequence.new.count_ordered(list)).to eq 'FABIA:1 3 4 5'
  end

  it 'Recebe lista e retorna nome com sequencia ordenada mais longa.' do
    list = ['CARLOS:23 15 12 21 22 26 24 5 3 14 27 28 18 17',
            'FELIPE:2 5 1 12 18 28 25 15 14 16 23 27 8 9',
            'RAQUEL:7 18 17 16 15 21 9 12 22 3 5 6 14',
            'LIA:23 27 12 11 10 2 5 6 16 22 18 ',
            'THAIS:4 22 5 17 13 6 29 7 8 14',
            'DANILO:11 22 21 14 15 17 26 3 4 7 8 28']

    expect(Sequence.new.count_ordered(list)).to eq 'RAQUEL:1 2 3 5'
  end
end


