require './services/base_service.rb'

class DictionaryService < BaseService
  def initialize(file: 'dictionary.txt')
    @file = file
  end

  def call
    create_dictionary
  end

  private

  attr_reader :file

  def create_dictionary
    dictionary = []
    File.foreach(file) { |word| dictionary << word.chop.to_s.downcase }
    dictionary
  end
end
