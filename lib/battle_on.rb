require "battle_on/version"

#module Battle
  #module On

module BattleOn

  def self.begin(name, email)
    RegisterGame.execute(name: name, email: email)
  end

  def self.attack(game_id, attack={})
    SendAttack.execute(game_id: game_id, attack: attack)
  end

end

  #end
#end
