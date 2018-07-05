require 'naymor/version'
require 'naymor/list'

module Naymor
  require 'securerandom'

  DEFAULT_ADJECTIVES = File.expand_path("../naymor/adjectives.txt", __FILE__)
  DEFAULT_NOUNS = File.expand_path("../naymor/nouns.txt", __FILE__)

  def self.populate_adjectives(list)
    @adjectives = List.new(list)
  end

  def self.populate_nouns(list)
    @nouns = List.new(list)
  end

  populate_adjectives File.open(DEFAULT_ADJECTIVES)
  populate_nouns File.open(DEFAULT_NOUNS)
  def self.generate
    [@adjectives.pick, @nouns.pick, SecureRandom.hex(3)].join('-')
  end
end
