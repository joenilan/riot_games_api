module RiotGamesApi
  module LOL
    module Resource
      class League < Base
        def initialize(connection, region)
          super
          @version = 'v2.3'
        end

        def by_summoner_id(summoner_id)
          get(resource_path('by-summoner', summoner_id), @version).map do |league|
            RiotGamesApi::LOL::Model::League::League.new league
          end
        end

        def by_summoner_id_only_own_entry(summoner_id)
          get(resource_path('by-summoner', summoner_id, true), @version).map do |league_item|
            RiotGamesApi::LOL::Model::League::LeagueItem.new league_item
          end
        end

        def by_team_id(team_id)
          get(resource_path('by-team', team_id), @version).map do |league|
            RiotGamesApi::LOL::Model::League::League.new league
          end
        end

        def by_team_id_only_own_entry(team_id)
          get(resource_path('by-team', team_id, true), @version).map do |league_item|
            RiotGamesApi::LOL::Model::League::LeagueItem.new league_item
          end
        end

        def challenger_solo_5v5
          league = get(resource_path_by_challenger, @version, type: 'RANKED_SOLO_5x5')
          RiotGamesApi::LOL::Model::League::League.new league
        end

        def challenger_team_5v5
          league = get(resource_path_by_challenger, @version, type: 'RANKED_TEAM_5x5')
          RiotGamesApi::LOL::Model::League::League.new league
        end

        def challenger_team_3v3
          league = get(resource_path_by_challenger, @version, type: 'RANKED_TEAM_3x3')
          RiotGamesApi::LOL::Model::League::League.new league
        end

        private

        def resource_path(path, target_id, entry = false)
          if entry
            "league/#{path}/#{target_id}/entry"
          else
            "league/#{path}/#{target_id}"
          end
        end

        def resource_path_by_challenger
          'league/challenger'
        end
      end
    end
  end
end
