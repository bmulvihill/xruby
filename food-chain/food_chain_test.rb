require 'minitest/autorun'

require_relative 'food_chain'

# rubocop:disable Metrics/MethodLength, Metrics/LineLength
class FoodChainTest < Minitest::Test
  def test_fly
    expected = "I know an old lady who swallowed a fly.\n"\
      "I don't know why she swallowed the fly. Perhaps she'll die.\n"
    assert_equal expected, FoodChain.verse(1)
  end

  def test_cow
    skip
    expected = <<-SONG
I know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
    SONG
    assert_equal expected, FoodChain.verse(7)
  end

  def test_horse
    skip
    expected = <<-SONG
I know an old lady who swallowed a horse.
She's dead, of course!
    SONG
    assert_equal expected, FoodChain.verse(8)
  end

  def test_multiple_verses
    skip
    expected = <<-SONG
I know an old lady who swallowed a fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
    SONG
    assert_equal expected, FoodChain.verses(1, 2)
  end

  def test_the_whole_song
    # skip
    expected = <<-SONG
I know an old lady who swallowed a fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a bird.
How absurd to swallow a bird!
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a cat.
Imagine that, to swallow a cat!
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a dog.
What a hog, to swallow a dog!
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a goat.
Just opened her throat and swallowed a goat!
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a horse.
She's dead, of course!
    SONG
    assert_equal expected, FoodChain.song
  end

  def test_the_whole_song_from_text_file
    skip # not clever, just removed from the reading here.
    expected = IO.read("song.txt")
    assert_equal expected, FoodChain.song
  end

  # this is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  def test_version
    skip
    assert_equal 1, FoodChain::VERSION
  end
end
