require "test_helper"

class NaymorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Naymor::VERSION
  end

  def test_it_will_construct_a_random_phrase_in_the_format_adjective_noun_number
    adjectives = StringIO.new %{jumping\nlaughing\nhumming}
    nouns = StringIO.new %{cow\nhat\nanaconda}
    Naymor.populate_adjectives(adjectives)
    Naymor.populate_nouns(nouns)
    adjective, noun, number = Naymor.generate.split('-')
    assert_includes adjectives.string, adjective
    assert_includes nouns.string, noun
    assert_equal 6, number.length
  end
end

