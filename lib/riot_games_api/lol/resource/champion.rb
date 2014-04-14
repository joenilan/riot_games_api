module RiotGamesApi
  module LOL
    module Resource
      class Champion < Base
        def initialize(connection, region)
          super
          @version = 'v1.2'
        end

        def all
          get(resource_path, @version).champions.map do |champion|
            RiotGamesApi::LOL::Model::Champion.new champion
          end
        end

        def free
          get(resource_path, @version, freeToPlay: true).champions.map do |champion|
            RiotGamesApi::LOL::Model::Champion.new champion
          end
        end

        def by_champion_id(champion_id)
          champion = get(resource_path_for_champion_id(champion_id), @version)
          RiotGamesApi::LOL::Model::Champion.new champion
        end

        private

        def resource_path
          'champion'
        end

        def resource_path_for_champion_id(champion_id)
          "champion/#{champion_id}"
        end
      end
    end
  end
end
