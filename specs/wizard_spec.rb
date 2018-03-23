require('minitest/autorun')
require_relative('../wizard.rb')
require_relative('../wand.rb')

class TestWizard < MiniTest::Test

  def setup
    @broken_wand = Wand.new("Oak", "Unicorn Hair")
    @elder_wand = Wand.new("Holly", "phoenix Feather")
    @ron = Wizard.new("Ron Weasley", @broken_wand)
    @harry = Wizard.new("Harry Potter", @elder_wand)
  end

  def test_wizard_has_name
    assert_equal("Ron Weasley", @ron.name)
  end

  def test_can_cast_spell
    assert_equal("Stupor", @ron.cast_spell("Stupor"))
  end

  def test_can_cast_stronger_spell
    assert_equal("Expecto Patronum", @harry.cast_spell("Expecto Patronum"))
  end

end
