# require_relative 'randomiser'

class Frame

    def initialize
        @score = 0
    end

    def frame_score
        @score
    end 

    def roll
        # @randomiser = Randomiser.new
        # @randomiser.pins_knocked_down 

        # return 0 if pins_left == 0 
        @score = rand(11)

    end

end