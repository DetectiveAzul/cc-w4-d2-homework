class Game
  attr_reader :player1, :player2
  attr_accessor :winner
  def initialize(params)
    @player1 = params[:player1].downcase
    @player2 = params[:player2].downcase
  end

  def winner_hand()
    return @player1.capitalize if check_winner() == "Player 1"
    return @player2.capitalize if check_winner() == "Player 2"
    return nil if check_winner() == nil
  end

  def check_winner()
    return "invalid" unless valid_options?()
    return nil if @player1 == @player2
    return "Player 1" if @player1 == "rock" && @player2 == "scissors"
    return "Player 1" if @player1 == "paper" && @player2 == "rock"
    return "Player 1" if @player1 == "scissors" && @player2 == "paper"
    return "Player 2"
  end

  def valid_options?()
    correct_array = ["rock", "scissors", "paper"]
    if correct_array.include?(@player1) && correct_array.include?(@player2)
      return true
    else
      return false
    end
  end
end
