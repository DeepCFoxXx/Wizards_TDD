require('minitest/autorun')
require('minitest/rg')
require_relative('../wizard.rb')
require_relative('../wand.rb')
require_relative('../coven.rb')

class TestCoven < MiniTest::Test

  def setup
    @broken_wand = Wand.new("Oak", "Unicorn Hair")
    @elder_wand = Wand.new("Holly", "Phoenix Feather")
    @ron = Wizard.new("Ron Weasly", @broken_wand)
    @harry = Wizard.new("Harry Potter", @elder_wand)
    @coven = Coven.new([@ron, @harry])
  end

  def test_cast_spell
    assert_equal(['fly', 'fly'], @coven.cast_spell('fly'))
  end

end
