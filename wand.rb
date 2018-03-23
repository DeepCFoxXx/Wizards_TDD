class Wand

  attr_reader :wood, :core

  def initialize(wood, core)
    @wood = wood
    @core = core
  end

  def cast(spell_name)
    if @wood == "Holly" && @core == "Pheonix Feather"
      return spell_name.upcase
    else
      return spell_name
    end
  end

end
