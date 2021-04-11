require 'spec_helper'

describe 'WordHunter' do
  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['C', 'B', 'M'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = 'BUG'

    expect(WordHunter.new.hunt(matrix, words)).to eq 'BUG'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['C', 'A', 'M', 'A'],
              ['J', 'S', 'S', 'L'],
              ['M', 'A', 'O', 'U'],
              ['N', 'V', 'S', 'I']]
    words = 'CAMA ASA'

    expect(WordHunter.new.hunt(matrix, words)).to eq 'ASA CAMA'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['T', 'Y', 'J', 'N'],
              ['M', 'N', 'B', 'L'],
              ['Q', 'X', 'A', 'N'],
              ['W', 'D', 'S', 'S']]
    words = 'OSSO'

    expect(WordHunter.new.hunt(matrix, words)).to eq ''
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['T', 'Y', 'J', 'N'],
              ['O', 'L', 'H', 'O'],
              ['Q', 'X', 'A', 'N'],
              ['W', 'D', 'S', 'S']]
    word = 'OSSO OLHO'

    expect(WordHunter.new.hunt(matrix, word)).to eq 'OLHO'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['W', 'P', 'M', 'S', 'S'],
              ['S', 'K', 'A', 'E', 'U'],
              ['C', 'J', 'C', 'P', 'O'],
              ['U', 'T', 'A', 'T', 'T'],
              ['Z', 'N', 'C', 'I', 'A'],
              ['L', 'Q', 'O', 'R', 'G']]
    word = 'MACACO BANANA TATU GATO'

    expect(WordHunter.new.hunt(matrix, word)).to eq 'GATO MACACO TATU'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['O', 'S', 'X', 'W'],
              ['H', 'P', 'S', 'Q'],
              ['C', 'V', 'U', 'Z'],
              ['R', 'O', 'P', 'X'],
              ['F', 'N', 'M', 'B'],
              ['Z', 'U', 'A', 'P'],
              ['E', 'O', 'C', 'D'],
              ['D', 'R', 'G', 'E']]
    word = 'CAMPUS CODE'

    expect(WordHunter.new.hunt(matrix, word)).to eq 'CAMPUS'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['D', 'J', 'T', 'K', 'I', 'W'],
              ['B', 'O', 'I', 'S', 'G', 'C'],
              ['O', 'I', 'P', 'X', 'A', 'B'],
              ['B', 'U', 'T', 'A', 'T', 'N'],
              ['X', 'B', 'P', 'L', 'A', 'L'],
              ['U', 'V', 'W', 'A', 'C', 'A']]
    word = 'TATU GATA VACA CAVALO BOI'

    expect(WordHunter.new.hunt(matrix, word)).to eq 'BOI GATA TATU'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['W', 'Q', 'D', 'G', 'S', 'X', 'B', 'K', 'H', 'U', 'A', 'W'],
              ['N', 'K', 'S', 'E', 'A', 'K', 'V', 'N', 'O', 'P', 'G', 'D'],
              ['A', 'L', 'W', 'C', 'M', 'S', 'W', 'B', 'O', 'W', 'D', 'L'],
              ['U', 'C', 'O', 'M', 'P', 'U', 'T', 'A', 'D', 'O', 'R', 'T'],
              ['R', 'T', 'S', 'Q', 'H', 'D', 'T', 'V', 'A', 'B', 'H', 'E'],
              ['V', 'S', 'F', 'C', 'S', 'Z', 'B', 'A', 'L', 'C', 'N', 'O'],
              ['S', 'I', 'S', 'T', 'E', 'M', 'A', 'K', 'C', 'T', 'T', 'O'],
              ['T', 'G', 'Q', 'B', 'S', 'N', 'L', 'I', 'E', 'Y', 'G', 'H'],
              ['U', 'I', 'W', 'V', 'Q', 'D', 'G', 'D', 'T', 'S', 'W', 'Q']]
    word = 'BUG COMPUTADOR TECLADO MONITOR ASSEMBLY SISTEMA'

    expect(WordHunter.new.hunt(matrix, word)).to eq 'COMPUTADOR SISTEMA TECLADO'
  end

  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['W', 'Q', 'D', 'G', 'S', 'X', 'B', 'K', 'H', 'U', 'A', 'W', 'T', 'P', 'H', 'R', 'A', 'Q'],
              ['N', 'K', 'S', 'E', 'A', 'S', 'V', 'N', 'O', 'P', 'G', 'D', 'G', 'L', 'E', 'K', 'T', 'S'],
              ['A', 'L', 'W', 'C', 'M', 'U', 'W', 'B', 'A', 'W', 'D', 'L', 'F', 'K', 'R', 'J', 'R', 'W'],
              ['U', 'J', 'L', 'M', 'C', 'E', 'B', 'Q', 'D', 'N', 'O', 'T', 'V', 'E', 'E', 'T', 'I', 'B'],
              ['R', 'T', 'S', 'Q', 'H', 'H', 'T', 'V', 'K', 'B', 'H', 'E', 'S', 'W', 'W', 'O', 'N', 'G'],
              ['V', 'S', 'F', 'C', 'S', 'P', 'B', 'A', 'I', 'C', 'N', 'O', 'L', 'S', 'Q', 'I', 'I', 'J'],
              ['E', 'I', 'S', 'G', 'W', 'R', 'D', 'K', 'U', 'T', 'T', 'O', 'O', 'H', 'A', 'U', 'T', 'N'],
              ['T', 'G', 'Q', 'B', 'S', 'O', 'L', 'I', 'P', 'Y', 'G', 'H', 'T', 'S', 'S', 'T', 'Y', 'G'],
              ['T', 'C', 'E', 'S', 'R', 'M', 'L', 'E', 'S', 'D', 'W', 'H', 'Q', 'A', 'U', 'P', 'C', 'E'],
              ['R', 'G', 'W', 'G', 'T', 'U', 'U', 'J', 'O', 'W', 'O', 'E', 'W', 'Z', 'I', 'W', 'D', 'Q'],
              ['S', 'V', 'T', 'F', 'D', 'Y', 'I', 'G', 'L', 'J', 'P', 'W', 'S', 'S', 'O', 'Q', 'T', 'E'],
              ['F', 'F', 'J', 'B', 'F', 'G', 'O', 'B', 'W', 'B', 'U', 'G', 'X', 'X', 'L', 'B', 'G', 'T'],
              ['B', 'M', 'D', 'K', 'V', 'F', 'P', 'X', 'N', 'D', 'G', 'G', 'S', 'O', 'S', 'E', 'S', 'Y'],
              ['H', 'N', 'F', 'B', 'H', 'K', 'I', 'S', 'M', 'S', 'B', 'O', 'N', 'E', 'X', 'Q', 'W', 'U'],
              ['R', 'X', 'G', 'G', 'I', 'J', 'D', 'B', 'D', 'B', 'H', 'I', 'P', 'X', 'B', 'S', 'Q', 'I'],
              ['Y', 'W', 'J', 'V', 'P', 'H', 'C', 'F', 'A', 'W', 'L', 'M', 'O', 'I', 'W', 'X', 'Q', 'O'],
              ['I', 'Q', 'B', 'L', 'O', 'Q', 'S', 'C', 'P', 'Y', 'G', 'H', 'L', 'U', 'S', 'J', 'A', 'S'],
              ['U', 'I', 'V', 'K', 'Q', 'D', 'G', 'D', 'E', 'S', 'W', 'Q', 'E', 'K', 'H', 'U', 'S', 'A']]
    word = 'BUG MATRIZ THE ONE CODE ZYON ARQUITETO TRINITY MORPHEUS SMITH'

    expect(WordHunter.new.hunt(matrix, word)).to eq 'BUG MORPHEUS ONE TRINITY'
  end
end
