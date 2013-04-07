require 'spec_helper_base'
require 'helpers/send_attack_spec_helper'

describe BattleOn::SendAttack do

  include SendAttackSpecHelper

  describe ".execute" do

    let(:game) {100}
    let(:coordinates) { {:x => 5, :y => 9} }
    let(:send_attack) { BattleOn::SendAttack }

    context "responds to the attack" do

      it "response is a hash" do
        #given
        stubbed_request
        #when
        response = send_attack.execute(game, coordinates)
        #expect
        response.should be_an_instance_of(Hash)
      end

      it "response contains a status" do
        #given
        stubbed_request
        #when
        response = send_attack.execute(game, coordinates)
        #expect
        response.should include("status")
      end

      it "response contains a 'x'" do
        #given
        stubbed_request
        #when
        response = send_attack.execute(game, coordinates)
        #expect
        response.should include("x")
      end
      
      it "response contains a 'y'" do
        #given
        stubbed_request
        #when
        response = send_attack.execute(game, coordinates)
        #expect
        response.should include("y")
      end

    end
  end
end
