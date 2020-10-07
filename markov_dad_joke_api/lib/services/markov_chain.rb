module Services
  class MarkovChain
    attr_accessor :order, :text, :chars, :ngrams
    def initialize(text)
      @order = 3
      @text = text
      @chars = text.split('')
      @ngrams = Hash.new
    end

    ##
    # @return newly generated string [String]
    def generate
      # build a hashmap with substrings of order length as the keys, and the possible characters that follow as the value
      chars.each_with_index do |char, index|
        break if index >= chars.count - order # + 1?
        # gram: n-gram of order length - a substring of the input text
        gram = text[index...index + order].downcase
        ngrams[gram] = [] unless ngrams[gram]
        ngrams[gram].push(text[index + order].downcase)
      end

      # loop, with starting gram
      # add next char.
      current_gram = text[0, order].downcase
      result = current_gram

      # iteratively generate random sentence with number of chars in original input text
      text.length.times do
        possibilities = ngrams[current_gram]
        # if no possibilities for current gram, exit loop
        break unless possibilities
        next_gram = possibilities.sample # random elem from possibilities
        result = result + next_gram
        current_gram = result[result.length - order...result.length]
      end
      result
    end
  end
end
