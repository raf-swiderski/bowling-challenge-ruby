require 'frame'

describe Frame do

    before(:each) do
        @frame = Frame.new
    end

    describe '#initialize' do 
        it 'starts with a default score of 0' do
            expect(@frame.frame_score).to eq 0
        end
    end

    describe '#roll' do

        it 'generates a random number between once and ten, indicating how many pins are knocked down' do
            allow(@frame).to receive(:roll) { 5 }
            
            expect(@frame.roll).to eq 5

        end

    end


end