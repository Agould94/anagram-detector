# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :word
    
    def initialize(word)
        @word = word
        @split_word = word.split('')
    end

    def match(anagrams)
        @matches = []
        anagrams.each do |possible_anagram|
            @possible_matches = possible_anagram.split('')
            if @possible_matches.sort == @split_word.sort
                @matches.push(possible_anagram)
            end
        end
        return @matches
    end
end

#     if @split_anagram.sort == @split_word.sort
    #         @matches.push(possible_anagram)
    #     else
    #         return []
    #     end 
    # @matches