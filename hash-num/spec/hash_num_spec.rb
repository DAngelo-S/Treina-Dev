require 'spec_helper'

describe 'HashNum' do
  it 'Recebe hash de letras e lista, retorna código das palavras.' do
    num_set = { '1': 'bc', '2': 'aol', '3': 'vka',
                '4': 'fagqe', '5': 'lo', '6': 'an' }
    list = ['ovo']

    expect(HashNum.new.find_sequence(num_set, list)).to eq ['235']
  end

  it 'Recebe hash de letras e lista, retorna código das palavras.' do
    num_set = { '1': 'bc', '2': 'aol', '3': 'vka',
                '4': 'fagqe', '5': 'lo', '6': 'an' }
    list = ['banana']

    expect(HashNum.new.find_sequence(num_set, list)).to eq [nil]
  end

  it 'Recebe hash de letras e lista, retorna código das palavras.' do
    num_set = { '1': 'bc', '2': 'aol', '3': 'vka',
                '4': 'fagqe', '5': 'lo', '6': 'v', '7': 'o' }
    list = ['ovo', 'banana']

    expect(HashNum.new.find_sequence(num_set, list)).to eq ['235', nil]
  end

  it 'Recebe hash de letras e lista, retorna código das palavras.' do
    num_set = { '1': 'acgp', '2': 'featl', '3': 'watm',
                '4': 'owriuyp', '5': 'zxcmbdu', '6': 'eldkjs' }
    list = ['campus', 'ruby', 'code', 'rails']
    result = ['123456',  nil, '1456', nil]

    expect(HashNum.new.find_sequence(num_set, list)).to eq result
  end

  it 'Recebe hash de letras e lista, retorna código das palavras.' do
    num_set = { '1': 'qpoeiru', '2': 'askldfhj', '3': 'zcyubo', '4': 'qeoprui',
                '5': 'lkjqre', '6': 'qmsndhejki', '7': 'apkencvhdr', '8': 'po',
                '9': 'wocjern', '10': 'zcvnip', '11': 'osiehrbtmcuz',
                '12': 'ygfthv' }
    list = ['luke', 'yoda', 'leia', 'vader', 'kylo', 'skywalker', 'rey']
    result = ['2356', '3467', '2467', nil, '2358', nil, '1412']

    expect(HashNum.new.find_sequence(num_set, list)).to eq result
  end

  it 'Recebe hash de letras e lista, retorna código das palavras.' do
    num_set = { '1': 'bpasu', '2': 'eahbg', '3': 'qwpeoi', '4': 'zmandklwo',
                '5': 'gjaej', '6': 'agfglwq', '7': 'qwr', '8': 'ghsmnbwp',
                '9': 'apwoi', '10': 'qetnm', '11': 'ghq', '12': 'agjqlke' }
    list = ['aaaaa', 'adlgj', 'eqpegoj', 'akgjleag', 'qpegjqepg',
            'lafkwj', 'gaaw', 'gpjaeip', 'bxqetlkj', 'gpaoje']
    result = ["12456", "146812", nil, nil, nil, nil, "2456", nil, nil, nil]

    expect(HashNum.new.find_sequence(num_set, list)).to eq result
  end
end
