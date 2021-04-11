require 'spec_helper'

describe 'Windows' do
  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = "0,3 0,5 X"

    expect(Windows.new.execute(actions)).to eq 3
  end

  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = "2,0 7,0 X"

    expect(Windows.new.execute(actions)).to eq 6
  end

  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = <<~ACTIONS
      1,1 3,2 X
      2,1 3,3 O
    ACTIONS

    expect(Windows.new.execute(actions)).to eq 2
  end

  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = <<~ACTIONS
      1,2 5,5 X
      1,1 2,3 O
      0,2 7,7 O
      6,7 7,8 X
    ACTIONS

    expect(Windows.new.execute(actions)).to eq 4
  end

  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = ""

    expect(Windows.new.execute(actions)).to eq 0
  end

  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = <<~ACTIONS
      8,1 9,9 X
      7,0 9,8 O
      2,1 5,3 X
      3,3 6,8 X
      5,0 7,5 O
    ACTIONS

    expect(Windows.new.execute(actions)).to eq 27
  end

  it 'Recebe lista de ações e retorna quantidade de janelas quebradas' do
    actions = <<~ACTIONS
      1,0 9,8 X
      3,3 8,7 O
      4,3 6,5 O
      5,8 6,9 O
      0,3 0,5 X
    ACTIONS

    expect(Windows.new.execute(actions)).to eq 52
  end
end
