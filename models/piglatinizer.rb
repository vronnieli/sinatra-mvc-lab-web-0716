class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    if "aeiouAEIOU".include? word.split("")[0]
      word + "way"
    else
      var = word.split("").take_while do |letter|
        !"aeiouAEIOU".include? letter
      end
      word[var.length..-1] + var.join + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.map do |word|
      piglatinize(word)
    end.join(" ")
  end


  #
  #   expect(words.piglatinize("pork")).to eq("orkpay")
  #   expect(words.piglatinize("I")).to eq("Iway")
  #   expect(words.piglatinize("hello")).to eq("ellohay")
  #   expect(words.piglatinize("please")).to eq("easeplay")
  #   expect(words.piglatinize("tomorrow")).to eq("omorrowtay")
  #   expect(words.piglatinize("until")).to eq("untilway")
  #   expect(words.piglatinize("this")).to eq("isthay")
  #   expect(words.piglatinize("Enumeration")).to eq("Enumerationway")
  #   expect(words.piglatinize("spray")).to eq("ayspray")
  #   expect(words.piglatinize("prays")).to eq("ayspray")
  # end
  #
  # it 'has a method splits the sentence to piglatinize each word' do
  #   expect(words.to_pig_latin("i love programming")).to eq("iway ovelay ogrammingpray")
  # end


end
