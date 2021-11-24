require_relative 'frame'
# require_relative 'randomiser'

class Player

    def initialize 
        @total_score = 0
        @current_frame = nil
        @all_frames = nil
    end

    def return_total_score
        @total_score
    end
    
    def create_frame
        @current_frame = Frame.new
    end

    def roll
        
        if @current_frame == nil
            create_frame
        end
        @current_frame.roll(@current_frame.frame_score)

        # @total_score += @current_frame.frame_score
    end

    def return_current_frame_score
        @current_frame.frame_score
    end

    def return_current_roll_number
        @current_frame.roll_number
    end

end