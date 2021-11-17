require 'frame.rb'

class Player

    attr_reader :current_frame, :all_frames

    def initialize 
        @total_score = 0
        @current_frame
        @all_frames
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

    def return_current_frame_score
        @current_frame.frame_score
    end

end