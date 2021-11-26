

class Frame

    def initialize
        @score = 0
        @pins_left = 10
        @roll_number = 1
    end

    def frame_score
        @score
    end 

    def roll(pins_knocked_down = 0)
        @roll_number += 1
        pins_left = @pins_left - pins_knocked_down
        @score = @score + rand(pins_left + 1)

    end

    def roll_number
        @roll_number
    end

end