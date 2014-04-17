require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Stats
        class RankedStats
          include Virtus.model

          attribute :champions, Array[RiotGamesApi::LOL::Model::Stats::ChampionStats]
          attribute :modify_date, Integer
          attribute :summoner_id, Integer
        end
      end
    end
  end
end
