# require_relative 'randomiser'

class Frame

    def initialize
        @score = 0
        @pins_left = 10
    end

    def frame_score
        @score
    end 

    def roll(pins_knocked_down = 0)
        # @randomiser = Randomiser.new
        # @randomiser.pins_knocked_down 

        # return 0 if pins_left == 0 
        pins_left = @pins_left - pins_knocked_down
        @score = rand(pins_left + 1)

    end

end