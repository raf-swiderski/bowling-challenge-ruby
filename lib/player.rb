require 'frame.rb'

class Player

    def initialize 
        @total_score = 0
    end

    def return_total_score
        @total_score
    end

    def create_frame
        @frame = Frame.new
    end

end