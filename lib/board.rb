require_relative "symbols.rb"

class Board
    attr_accessor :board

    include Symbols

    def initialize
        @board = Array.new(6) {Array.new(7, empty_circle)}
    end

    def display_board
        @board.each do |row|
            puts row.join(' ')
        end
        puts (1..7).to_a.join(' ')
    end
end

game = Board.new
game.display_board