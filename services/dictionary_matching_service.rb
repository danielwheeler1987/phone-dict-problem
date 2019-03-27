require './services/base_service.rb'

class DictionaryMatchingService < BaseService
  def initialize(letters:, dictionary:)
    @letters = letters
    @dictionary = dictionary
  end

  def call
    find_dictionary_matches
  end

  private

  attr_reader :letters, :dictionary

  def find_dictionary_matches
    all_possible_combos = letters.shift.product(*letters).map(&:join)
    dictionary.select { |word| word.match("#{all_possible_combos.join('|')}") }
  end
end
