require_relative 'frame'
# require_relative 'randomiser'

class Player

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
        @current_frame.roll(@current_frame.frame_score)
        
        # @total_score += @current_frame.frame_score
    end

    def return_current_frame_score
        @current_frame.frame_score
    end

end