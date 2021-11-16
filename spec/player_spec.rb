require 'player.rb'

describe Player do 

    # before(:each) do

    # end


    describe '#total_score' do
        it 'returns the total score, which has a default of 0' do
            player = Player.new
            expect(player.return_total_score).to eq 0
        end
    end

    describe '#roll' do

        
        it 'creates a frame which contains the score for that frame' do
            player = Player.new
            expect(player.create_frame.score).to eq 0
        end
    end
end