require_relative 'player.rb'

class ConnectFour
    attr_accessor :board, :p1, :p2
    attr_reader :round

    def initialize
        @board = Array.new(7) {Array.new(6, nil)}
        @p1 = Player.new("gamepiece")
        @p2 = Player.new("gamepiece")
        @round = 0
    end

    def play
        @round += 1
    end
end