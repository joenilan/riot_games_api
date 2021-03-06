module RiotGamesApi
  module LOL
    module Model
      module League
        class MiniSeries
          include Virtus.model

          attribute :losses, Integer
          attribute :progress, String
          attribute :target, Integer
          attribute :time_left_to_play_millis, Integer
          attribute :wins, Integer
        end
      end
    end
  end
end
