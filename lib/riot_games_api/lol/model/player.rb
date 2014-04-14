require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      class Player
        include Virtus.model

        attribute :champion_id, Integer
        attribute :summoner_id, Integer
        attribute :team_id, Integer
      end
    end
  end
end
