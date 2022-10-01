require_relative 'player.rb'
require_relative 'board.rb'
require_relative 'symbols.rb'
require 'pry-byebug'

class ConnectFour
    attr_accessor :board, :p1, :p2, :rounds_played

    include Symbols

    def initialize
        @board = Board.new
        @p1 = Player.new(red_circle, 1)
        @p2 = Player.new(yellow_circle, 2)
        @rounds_played = 0 #Starts at -1 because first time calling this function +=1's rounds_played to 0, thus starting the counting there
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

        @rounds_played += 1

        column = find_column(player)
        row = @board.find_row(column)

        @board.update_board(column, row, player.piece) 
    end

    def find_column(player)
        puts "Player #{player.number}, pick a column"
        column = gets.chomp.to_i - 1

        if column < 0 or column > 7
            puts "Choose a number between 1 and 7"
            find_column(player)
        end
    end

    def show_board
        puts @board.display_board
    end
end
game = ConnectFour.new
game.show_board
