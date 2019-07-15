require 'pry'
class PigLatinizer < Sinatra::Base
    attr_accessor :pig_latin_word, :pig_latin_sentence
    
    
    def piglatinizer(string)
        @pig_latin_sentence = []
        # split string into words
        array = string.split
        array.each do |word|
            word.downcase
            if word.start_with?("a","e","i","o","u")
                # binding.pry
                @pig_latin_word = "#{word}way"
                @pig_latin_sentence << @pig_latin_word
            elsif word.start_with?("ch")
                @pig_latin_word = "#{word[2..240]}#{word[0..1]}ay"
                @pig_latin_sentence << @pig_latin_word
            elsif word.start_with?("str")
                @pig_latin_word = "#{word[3..240]}#{word[0..2]}ay"
                @pig_latin_sentence << @pig_latin_word
            else
                @pig_latin_word = "#{word[1..240]}#{word[0]}ay"
                @pig_latin_sentence << @pig_latin_word
            end
        end
        @pig_latin_sentence.join(" ")
    end

end

# word_one = PigLatinizer.new

# p word_one.piglatinizer("hello character")
# p word_one.piglatinizer("character")
# p word_one.piglatinizer("strong")

