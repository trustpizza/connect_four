require_relative 'player.rb'
require_relative 'board.rb'
require_relative 'symbols.rb'

class ConnectFour
    attr_accessor :board, :p1, :p2, :rounds_played

    include Symbols

    def initialize
        @board = Board.new
        @p1 = Player.new(red_circle)
        @p2 = Player.new(yellow_circle)
        @rounds_played = 0
        play()
    end

    def play
        system("clear")
        show_board()
        play_round()
    end

    def play_round
        player = p1 if @rounds_played.even?
        player = p2 if @rounds_played.odd?
        p player        
    end

    def show_board
        puts @board
    end
end