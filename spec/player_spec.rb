require 'player.rb'

describe Player do 
    describe '#total_score' do
        it 'returns the total score, which has a default of 0' do
            p1 = Player.new
            expect(p1.return_total_score).to eq 0
        end
    end
end