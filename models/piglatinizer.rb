class PigLatinizer

Alpha = ('a'..'z').to_a
Vowels = %w[a e i o u]
Consonants = Alpha - Vowels

  def piglatinize(word)
    if Vowels.include?(word[0])
      word + 'ay'
    elsif Consonants.include?(word[0]) &&
      Consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif word[0..1] == "qu"
      word[2..-1]+"quay"
    elsif word[0..2] == "squ"
       word[3..-1]+"squay"
    else Consonants.include?(word[0])
      word[1..-1] + word[0..0] + 'ay'
    end
  end

p = PigLatinizer.new

end
