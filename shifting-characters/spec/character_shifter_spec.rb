require 'spec_helper'

describe 'CharacterShifter' do
  it 'Recebe instruções e retorna frase modificada' do
    collection = ['ABC']
    instructions = '0:>1'

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['CAB']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = ['ABC']
    instructions = '0:<2'

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['CAB']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = ['ABCDE', 'FGHIJ']
    instructions = "1:>1 1:<2 0:<1"

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['BCDEA', 'GHIJF']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = ['ABCDE', 'FGHIJ']
    instructions = '0<>1:2'

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['ABHDE', 'FGCIJ']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = ['ABCDE', 'FGHIJ']
    instructions = "0:>1 0<>1:1 1:<1"

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ["EGBCD", "AHIJF"]
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = ['POPAOGPEAKCLMBKBSMGKGIOAEIGJBALSRJIRSJORJAEOGJAPJB']
    instructions = '0:<11'

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['LMBKBSMGKGIOAEIGJBALSRJIRSJORJAEOGJAPJBPOPAOGPEAKC']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = ['POPAOGPEAKCLMBKBSMGKGIOAEIGJBALSRJIRSJORJAEOGJAPJB']
    instructions = '0:>10'

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['JAEOGJAPJBPOPAOGPEAKCLMBKBSMGKGIOAEIGJBALSRJIRSJOR']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = [
                  'AOEFJAEOGHJEOEHJVAMDMBHEOAGJ',
                  'MBXKFSGPOWRHJWRFKBNMSFBKSFMW',
                  'OQUJEIWNKDVZPDBZMADGJAOELGJA'
                 ]
    instructions = "1:<2 2:>3 0:<5 0<>2:11 1:<12 0:>6 1:>5"

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['JAOEFJAEOGHJEOEHJKAMDMBHEOAG',
                                                                          'WRHJWRFKBNMSFBKSFMWMBXKFSGPO',
                                                                          'GJAOQUJEIWNVDVZPDBZMADGJAOEL']
  end

  it 'Recebe instruções e retorna frase modificada' do
    collection = [
                  'POPAOGPEAKCLMBKBSMGKGIOAEIGJBALSRJIRSJORJAEOGJAPJB',
                  'QWERTYUIOPASDGFGFJHKLLXMCBOAZMBLASRGKOWLRLHJRHLLAH',
                  'OLEKOQTIOEIFJAKDVNMDRGMAELGAJEGGKGJAGKADJOLEGJEKAF',
                  'ZCMBCNZXXMNCSDJGKSGJDKGJASDFGEOTWIEOIQQTIQEOJALKDG',
                  'AKDLJKFADKLGOWEIOMKBXMBFFOWEUTESDKLGJGJASEGJEOSOGG'
                 ]
    instructions = "3:<3 2:>4 0:>5 4:<11 1:<5 2<>4:20 1:>3 3:>9 0:<1 0<>3:6 1:<1 3:<1 4:>3 1:>8 1<>2:17"

    expect(CharacterShifter.new.execute(instructions, collection)).to eq ['APJBPOZAOGPEAKCLMBKBSMGKGIOAEIGJBALSRJIRSJORJAEOGJ',
                                                                          'HLLAHQWERTYUIOPASAGFGFJHKLLXMCBOAZMBLASRGKOWLRLHJR',
                                                                          'EKAFOLEKOQTIOEIFJDKDSNMDRGMAELGAJEGGKGJAGKADJOLEGJ',
                                                                          'ALKDGPCMBCNZXXMNCSDJGKSGJDKGJASDFGEOTWIEOIQQTIQEOJ',
                                                                          'DKLGOWEIOMKBXMBFFOWEUTEVDKLGJGJASEGJEOSOGGAKDLJKFA']
  end
end

