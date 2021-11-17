class Randomiser

    def initialize
        @pins_knocked_down
    end

    def pins_knocked_down(pins_left = 0)
        rand(pins_left)
    end

end