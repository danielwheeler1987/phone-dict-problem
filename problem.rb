require './utils.rb'
require './services/letters_lookup_service.rb'
require './services/dictionary_service.rb'
require './services/dictionary_matching_service.rb'

include Utils

puts "Enter those digits:"
digits = Utils.sanitize_input(gets.chomp)

dictionary = DictionaryService.call

letters = LettersLookupService.call(digits: digits)
abort('Oops... Those digits do not match letters on phone pad') unless letters.any?

matches = DictionaryMatchingService.call(letters: letters, dictionary: dictionary)

puts matches
