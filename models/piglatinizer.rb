class PigLatinizer
  attr_accessor :piglatinized_phrase

  def piglatinize(word)
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      first_letter = word.slice!(0..vowel_index-1)
      word + first_letter + "ay"
    end
  end

  def to_pig_latin(phrase)
    entire_phrase = phrase.split(" ")
    @piglatinized_phrase = entire_phrase.split.collect {|word| piglatinize(word)}.join(" ")
  end
end