class Game

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def print_score
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "💀💀💀"
    exit
  end

  def tally_score
    if @player1.lives == 0
      winner(@player2)
    elsif @player2.lives == 0
      winner(@player1)
    end
  end

  def turn #the actual game
    @player1.ask_q
    tally_score
    @player2.ask_q
    tally_score
    print_score
    puts "----- NEW TURN ------"
    turn
  end

  def start_game
    puts "Begin! May the odds ever be in your favour 😈"
    turn
  end

end 
