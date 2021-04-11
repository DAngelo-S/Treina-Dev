require 'spec_helper'

describe Recipe do
  it 'Instancia um objeto do tipo receita' do
    recipe = Recipe.new(title: 'Feijoada',
                        description: 'Você nunca comeu uma receita igual',
                        ingredients: 'Feijão e Carnes',
                        cook_time: 80,
                        featured: true)

    expect(recipe.class).to eq Recipe
    expect(recipe.title).to eq 'Feijoada'
    expect(recipe.description).to eq 'Você nunca comeu uma receita igual'
    expect(recipe.ingredients).to eq 'Feijão e Carnes'
    expect(recipe.cook_time).to eq 80
    expect(recipe.featured).to eq true
  end

  it 'Converte um json para um objeto do tipo receita' do
    recipe = Recipe.from_json('data/pudim.json')

    expect(recipe.class).to eq Recipe
    expect(recipe.title).to eq 'Pudim'
    expect(recipe.description).to eq 'O melhor pudim da sua vida!'
    expect(recipe.ingredients).to eq 'Leite condensado, ovos e leite'
    expect(recipe.cook_time).to eq 80
    expect(recipe.featured).to eq true
  end

  it 'Converte outro json para um objeto do tipo receita' do
    recipe = Recipe.from_json('data/feijoada.json')

    expect(recipe.class).to eq Recipe
    expect(recipe.title).to eq 'Feijoada'
    expect(recipe.description).to eq 'Você nunca comeu uma receita igual.'
    expect(recipe.ingredients).to eq 'Feijão e Carnes'
    expect(recipe.cook_time).to eq 120
    expect(recipe.featured).to eq false
  end
end
