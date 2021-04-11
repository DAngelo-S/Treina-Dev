require 'spec_helper'

describe 'StringExpander' do
  it 'Recebe instruções e retorna string final' do
    instructions = '(2x)POPO'

    expect(StringExpander.new.expand(instructions)).to eq 'POPOPOPO'
  end

  it 'Recebe instruções e retorna string final' do
    instructions = '(2x)BA(4x)CEC'

    expect(StringExpander.new.expand(instructions)).to eq 'BABACECCECCECCEC'
  end

  it 'Recebe instruções e retorna string final' do
    instructions = '(3x)(1x)BA'

    expect(StringExpander.new.expand(instructions)).to eq 'BABABA'
  end

  it 'Recebe instruções e retorna string final' do
    instructions = '(3x)(1x)LC(2x)PE(2x)(3x)RG'

    expect(StringExpander.new.expand(instructions)).to eq 'LCLCLCPEPERGRGRGRGRGRG'
  end

  it 'Recebe instruções e retorna string final' do
    instructions = '(5x)(3x)(2x)ABBA(2x)(4x)AGAJEGEKJLA(3x)LPAOLACL(1x)(2x)LAEK'

    expect(StringExpander.new.expand(instructions)).to eq 'ABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAABBAAGAJEGEKJLAAGAJEGEKJLAAGAJEGEKJLAAGAJEGEKJLAAGAJEGEKJLAAGAJEGEKJLAAGAJEGEKJLAAGAJEGEKJLALPAOLACLLPAOLACLLPAOLACLLAEKLAEK'
  end

  it 'Recebe instruções e retorna string final' do
    instructions = '(2x)(3x)(0x)PEARL(3x)BVNALKWH(1x)VNAKN(4x)(9x)ALEGNG'

    expect(StringExpander.new.expand(instructions)).to eq 'BVNALKWHBVNALKWHBVNALKWHVNAKNALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNGALEGNG'
  end
end
