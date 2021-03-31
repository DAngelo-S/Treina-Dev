class Word
  def vowels_count(phrase)
    vowels = "aáãâàäeëéèẽêiíìïîĩoóòöõôuúùüûũǜǘyýỳÿŷỹ"
    return phrase.downcase.count vowels
  end

  def consonants_count(phrase)
    consonants = "bcçĉdfgǵĝhĥjĵkḱlĺmḿnǹńñpṕqrŕsśŝtvṽwẁẃŵxzźẑ"
    return phrase.downcase.count consonants
  end
end
