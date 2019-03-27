require './services/base_service.rb'

class LettersLookupService < BaseService
  PHONE_NUMBER_LETTERS = {
    "2" => ["a", "b", "c"],
    "3" => ["d", "e", "f"],
    "4" => ["g", "h", "i"],
    "5" => ["j", "k", "l"],
    "6" => ["m", "n", "o"],
    "7" => ["p", "q", "r", "s"],
    "8" => ["t", "u", "v"],
    "9" => ["w", "x", "y", "z"]
  }.freeze

  def initialize(digits:)
    @digits = digits
  end

  def call
    letters_based_on_digits
  end

  private

  attr_reader :digits

  def letters_based_on_digits
    digits.chars.map { |digit| PHONE_NUMBER_LETTERS[digit] }
  end
end
