require 'spec_helper'

describe DataFinder do
  it 'Procura repetições nas strings e retorna soma' do
    list = ['aabcdef',
            'abcccde',
            'abcdefg',
            'aabbcde',
            'aaabbcd']
    expect(DataFinder.new.find_and_sum(list, 2, 3)).to eq 5
  end

  it 'Procura repetições nas strings e retorna soma' do
    list = ['sstttuvxwyzabc',
            'aaabbbcdedfghi',
            'abcdefghijklmn',
            'aabbcdefghijkl',
            'aacdefghijklmn',
            'iiijklmnopqrst',
            'abacdefghijkla']
    expect(DataFinder.new.find_and_sum(list, 2, 3)).to eq 8
  end

  it 'Procura repetições nas strings e retorna soma' do
    list = ['fghijklefjalef',
            'cnmgehzgheggwk',
            'ffghijwoptigvb',
            'abcccgahegnqld',
            'aabcoaegaeagdd',
            'fhiijlgieageak',
            'fhglaeghegfhfh']
    expect(DataFinder.new.find_and_sum(list, 2, 3)).to eq 11
  end

  it 'Procura repetições nas strings e retorna soma' do
    list = ['mmnbvasfkjadfh',
            'fajlgijaegejeg',
            'uioereknvkndaa',
            'glakejeelgkcvd',
            'flakjwealjkglg',
            'aabcdgageaegad',
            'qwerrtyuyuiooe',
            'qwerqwerqerwqe',
            'pppopooiipppop',
            'gaejgeagjjlakg',
            'bbbiiiooaoaoao']
    expect(DataFinder.new.find_and_sum(list, 2, 5)).to eq 11
  end

  it 'Procura repetições nas strings e retorna soma' do
    list = ['awsdfasdfasdfasdf',
            'lkjhlkjhlkjhlkjhl',
            'ghfdjklghfdjsghkd',
            'bvbncvbcnbvncvbcb',
            'efaefaeabcccdeccb',
            'iurieuireurieuiei',
            'faefilhaelihgadgf',
            'gagaglllllllhabab',
            'aaaaabpdddddeghif',
            'deffaefaefefghijk',
            'azbxcalskdjfhzhde']
    expect(DataFinder.new.find_and_sum(list, 3, 5)).to eq 10
  end
end
