require('minitest/autorun')
require_relative('../wand')

class TestWand < MiniTest::Test

  def setup
    @elder_wand = Wand.new("Holly", "Phoenix Feather")
  end

  def test_wand_has_wood
    assert_equal("Holly", @elder_wand.wood)
  end

end
