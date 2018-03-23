class Coven

  def initialize(coven)
    @wizards = coven
  end

  def cast_spell(spell_name)
    spells = []
    for wizard in @wizards
      spells.push(wizard.cast_spell(spell_name))
    end
    return spells
  end

end
