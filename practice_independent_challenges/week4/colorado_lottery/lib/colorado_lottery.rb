require 'game'
require 'contestant'
require 'Date'

class ColoradoLottery

    attr_reader :registered_contestants,
                :winners, 
                :current_contestants

    def initialize
        @registered_contestants = {}
        @winners = []
        @current_contestants = {}
    end

    def interested_and_18?(name, game)
        name.age > 17 && name.game_interests.include?(game.name)
    end 

    def can_register?(name, game)
        interested_and_18?(name, game) && (game.national_drawing? || name.out_of_state? == false)
    end

end 