module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class MasteryPageList
          include Virtus.model

          attribute :pages, Set[RiotGamesApi::LOL::Model::Summoner::MasteryPage]
          attribute :summoner_id, Integer
        end
      end
    end
  end
end
