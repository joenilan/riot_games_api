require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class ChampionSpell
          include Virtus.model

          attribute :cooldown, Array[Integer]
          attribute :cooldown_burn, String
          attribute :cost, Array[Integer]
          attribute :cost_burn, String
          attribute :cost_type, String
          attribute :description, String
          attribute :effect, Array[Array[Integer]]
          attribute :effect_burn, Array[String]
          attribute :image, RiotGamesApi::LOL::Model::LOLStaticData::Image
          attribute :key, String
          attribute :leveltip, RiotGamesApi::LOL::Model::LOLStaticData::LevelTip
          attribute :maxrank, Integer
          attribute :name, String
          attribute :range, Array # need to check
          attribute :range_burn, String
          attribute :resource, String
          attribute :sanitized_description, String
          attribute :sanitized_tooltip, String
          attribute :tooltip, String
          attribute :vars, Array[RiotGamesApi::LOL::Model::LOLStaticData::SpellVars]
        end
      end
    end
  end
end
