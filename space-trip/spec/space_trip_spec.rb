require 'spec_helper'

describe 'SpaceTrip' do
  it 'Recebe lista de planetas e um número, retorna rota de menor distancia ' do
    planets = File.open('spec/quarzite_list').read

    expect(SpaceTrip.new.travel(planets, 3)).to eq 39
  end

  it 'Recebe lista de planetas e um número, retorna rota de menor distancia ' do
    planets = File.open('spec/onderon_list').read

    expect(SpaceTrip.new.travel(planets, 4)).to eq 57
  end

  it 'Recebe lista de planetas e um número, retorna rota de menor distancia ' do
    planets = File.open('spec/onderon_list').read

    expect(SpaceTrip.new.travel(planets, 5)).to eq 91
  end

  it 'Recebe lista de planetas e um número, retorna rota de menor distancia ' do
    planets = File.open('spec/agamar_list').read

    expect(SpaceTrip.new.travel(planets, 5)).to eq 43
  end

  it 'Recebe lista de planetas e um número, retorna rota de menor distancia ' do
    planets = File.open('spec/agamar_list').read

    expect(SpaceTrip.new.travel(planets, 7)).to eq 95
  end
end
