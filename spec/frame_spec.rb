require 'frame'

describe Frame do

    before(:each) do
        @frame = Frame.new
    end

    describe '#initialize' do 

        it 'starts with a default score of 0' do
            expect(@frame.frame_score).to eq 0
        end

        it 'knows what roll the player is on, (either 1 or 2) having a default value of 1' do 
            expect(@frame.roll_number).to eq 1
        end

    end

    describe '#roll' do

        it 'generates a random number between once and ten, indicating how many pins are knocked down' do
            allow(@frame).to receive(:roll) { 5 }
            expect(@frame.roll).to eq 5

        end

        

        it 'takes an argument of how many pins are knocked down, for when the player rolls for the 2nd time in the frame' do
            expect(@frame.roll(5)).to be_between(0, 5)
        end 



    end


end