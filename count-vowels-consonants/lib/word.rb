class Word
  def vowels_count(phrase)
    vowels = "aáãâàäeëéèẽêiíìïîĩoóòöõôuúùüûũǜǘyýỳÿŷỹ"
    phrase.downcase.count vowels
  end

  def consonants_count(phrase)
    consonants = "bcçĉdfgǵĝhĥjĵkḱlĺmḿnǹńñpṕqrŕsśŝtvṽwẁẃŵxzźẑ"
    phrase.downcase.count consonants
  end
end
