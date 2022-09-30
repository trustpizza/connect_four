#spec/connect_four_spec.rb

require "./lib/connect_four.rb"

describe ConnectFour do
    describe "#play" do
        it "Rounds played goes up by 1" do
            game = ConnectFour.new
            expect(game.round).to eql(1)
        end

        xit "Puts Which Player's turn it is" do
            game = ConnectFour.new
            game.play
            expect(game.play).to eql()
        end
    end
end