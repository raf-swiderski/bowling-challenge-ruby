require_relative 'frame'

class Player

    def initialize 
        @total_score = 0
        @current_frame = nil
        @all_frames = []
    end

    def all_frames
        @all_frames
    end    

    def return_total_score
        @total_score
    end
    
    def create_frame
        @current_frame = Frame.new
    end

    def roll_frame_object
        @current_frame.roll(@current_frame.frame_score)
    end

    def roll
        
        if @current_frame == nil || @current_frame.roll_number == 3
            create_frame
            roll_frame_object
            puts "you knocked down #{return_current_frame_score} pins"
            return
        end
        
        if @current_frame.roll_number == 2
            roll_frame_object
            @total_score += @current_frame.frame_score
            store_frame
            puts "you knocked down #{return_current_frame_score} total pins in this frame"
            puts "#{@all_frames}"
        end
        
    end

    def store_frame
        @all_frames << @current_frame.frame_score
    end
        
    def return_current_frame_score
        @current_frame.frame_score
    end

    def return_current_roll_number
        @current_frame.roll_number
    end

end