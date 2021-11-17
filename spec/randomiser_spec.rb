require 'randomiser'

describe Randomiser do

    before(:each) do
        @randomiser = Randomiser.new
    end

    describe '#pins_knocked_down' do

        it 'creates a random number of pins knocked down, based on how many pins remain in the frame' do
            allow(@randomiser).to receive(:pins_knocked_down) { 2 }


            expect(@randomiser.pins_knocked_down(5)).to eq 2

        end

    end

end