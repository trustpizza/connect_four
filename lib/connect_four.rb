require_relative 'player.rb'
require_relative 'board.rb'
require_relative 'symbols.rb'

class ConnectFour
    attr_accessor :board, :p1, :p2
    attr_reader :round
    include Symbols

    def initialize
        @board = Board.new
        @p1 = Player.new(red_circle)
        @p2 = Player.new(yellow_circle)
    end

    def play
        system("clear")
        show_board()
    end

    def show_board
        puts @board
    end
end