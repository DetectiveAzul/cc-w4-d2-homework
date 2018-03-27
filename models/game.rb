class Game
  attr_reader :player1, :player2
  attr_accessor :winner
  def initialize(params)
    @player1 = params[:player1]
    @player2 = params[:player2]
  end

  def winner_hand()
    return @player1 if check_winner() == "Player 1"
    return @player2 if check_winner() == "Player 2"
    return nil if check_winner() == nil
  end
  
  def check_winner()
    return nil if @player1 == @player2
    return "Player 1" if @player1 == "rock" && @player2 == "scissors"
    return "Player 1" if @player1 == "paper" && @player2 == "rock"
    return "Player 1" if @player1 == "scissors" && @player2 == "paper"
    return "Player 2"
  end
end
