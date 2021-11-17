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

        it 'creates a frame automatically when the roll method is called' do

            
            @player.roll
            expect(@player.current_frame.score).to eq 0

        end

        # it 'receives a random number between 1 & 10 when the #roll method is called for the first time' do



        # end
        
    end

    describe '#create_frame' do

        it 'creates a frame which contains the score for that frame' do
            
            expect(@player.create_frame.score).to eq 0
        end

    end
end