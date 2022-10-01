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

    def find_row(column)
        row = 0
        until @board[row][column] == red_circle or yellow_circle
            row += 1 #Finds the first non empty circle
        end

        row -= 1
    end

    def update_board(column, row, piece)
        @board[row][column] = piece
    end
end

game = Board.new
game.display_board