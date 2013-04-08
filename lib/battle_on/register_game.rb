require 'json'
require 'rest_client'

module BattleOn

  #Start the game
  #
  #mandatory parameters
  #name: My Name
  #email: my@email.com

  class RegisterGame
    attr_reader :name, :email

    def self.execute(name, email)
      new(name, email).execute
    end

    def initialize(name, email)
      @name, @email = name, email
    end

    def execute
      JSON.parse register
    end

    private

    def register
      RestClient.post "http://battle.platform45.com/register", {name: name, email: email}.to_json
    end

  end
end
