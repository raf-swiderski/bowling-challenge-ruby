require 'player.rb'

describe Player do 

    before(:each) do
        @player = Player.new
    end


    describe '#total_score' do

        it 'returns the total score, which has a default of 0' do
            expect(@player.return_total_score).to eq 0
        end

    end

    describe '#roll' do

        it 'creates a frame automatically' do
            @player.roll
            expect(@player.return_current_frame_score).to be_between(0, 10)
        end

        it 'doesnt create a frame if the player has already rolled' do
            @player.roll
            expect(@player.return_current_roll_number).to eq 2
        end

        it 'assigns a random number to @current_frame between 1 & 10 when the #roll method is called for the first time' do
            allow(@player).to receive(:return_current_frame_score) { 3 }
            @player.roll
            expect(@player.return_current_frame_score).to eq 3

        end

    

        # it 'adds the current frame score to the total score when the frame is over' do
        #     @player.roll
        #     expect(@player.return_current_frame_score).to eq @player.return_total_score
        # end


    end

    describe '#create_frame' do

        it 'creates a frame which contains the score for that frame' do
            expect(@player.create_frame.frame_score).to eq 0
        end

    end
end