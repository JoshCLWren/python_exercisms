=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
require 'byebug'
class Phrase

  attr_reader :word_count

  def initialize(phrase)
    regex = /[^\'|\w]+/
    arr = phrase.downcase.strip.split(regex)
    arr = arr.map{|word| word.gsub(/^\'+|\'+$/, '')}
    @word_count = arr.tally
  end

end