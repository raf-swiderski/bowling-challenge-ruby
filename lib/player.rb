require 'frame.rb'

class Player

    attr_reader :current_frame, :all_frames

    def initialize 
        @total_score = 0
        @frame
    end

    def return_total_score
        @total_score
    end
    
    def create_frame
        @current_frame = Frame.new
    end

    def roll
        create_frame
    end

end