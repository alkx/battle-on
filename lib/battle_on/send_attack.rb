module BattleOn

  #mandatory parameters:
  #
  #game_id: this relates to the id Plaform45's API
  #provides when you launch your attack.
  #
  #and the attack the at you want to send
  #x and y as keys, for example
  #{:x => 4, :y => 5}

  class SendAttack
    attr_reader :game_id, :args, :x_axis, :y_axis

    def self.execute(game_id, args)
      new(game_id, args).execute
    end

    def initialize(game_id, args)
      @game_id = game_id
      @x_axis  = args[:x_axis] #get_x(args)
      @y_axis  = args[:y_axis] #get_y(args)
    end

    def execute
      JSON.parse attack
    end

    private

    def attack
      RestClient.post "http://battle.platform45.com/nuke", { x:  x_axis,
                                                             y:  y_axis,
                                                             id: game_id}.to_json
    end

    def get_x(args)
    end

    def get_y(args)
    end

  end

end
