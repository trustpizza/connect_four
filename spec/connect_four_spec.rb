#spec/connect_four_spec.rb

require "./lib/connect_four.rb"

describe ConnectFour do
    describe "#Initialize" do 
        it "Player 1 initializes with a token" do
            game = ConnectFour.new
            expect(game.p1.piece).to eql("\e[0;31;49m●\e[0m")
        end

        it "Player 2 initializes with a token" do
            game = ConnectFour.new
            expect(game.p2.piece).to eql("\e[0;33;49m●\e[0m")
        end

        it "Rounds played starts at 0" do
            game = ConnectFour.new
            expect(game.rounds_played).to eql(0)
        end
    end

    describe "#play_round" do 
        xit "Round 1 begins with Player 1's turn" do
            game = ConnectFour.new
            p1 = game.p1
            expect(game.play_round).to eql(p1)
        end

        xit "Round 2 calls player 2" do 
            game = ConnectFour.new
            p2 = game.p2
            game.play_round
            expect(game.play_round).to eql(p2)
        end 

        it "Updates board as required" do 
            game = ConnectFour.new
            game.play_round
        end
    end
end


