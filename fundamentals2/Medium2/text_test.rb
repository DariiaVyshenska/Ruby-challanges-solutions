require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @f = File.new('my_text.txt')
    @my_text = Text.new(@f.read)
  end

  def teardown
    @f.close
    puts "File has been closed: #{@f.closed?}"
  end

  def test_swap
    corr_result = <<~TXT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.\n
    TXT
    my_result = @my_text.swap('a', 'e')
    assert_equal(corr_result, my_result)
  end

  def test_word_count
    assert_equal(72, @my_text.word_count)
  end
end
