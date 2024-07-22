require_relative 'player'
require_relative 'question'

class Game 
  attr_accessor :current_player
  def initialize(player1, player2, lives, lower_limit, upper_limit)
    @player1 = Player.new(player1, lives)
    @player2 = Player.new(player2, lives)
    @lower_limit = lower_limit
    @upper_limit =upper_limit
    @current_player = @player1
  end

  def change_current_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def declare_winner
    @player1.lives > @player2.lives ? @winner = @player1 : @winner = @player2
    puts "The winner of the game is #{@winner.name} with a score = #{@winner.score}"
  end

  def play_game
    while @player1.lives > 0 && @player2.lives > 0
      puts "#{current_player.name} has #{current_player.lives} lives."
      question = Math_question.new(@lower_limit, @upper_limit)
    puts current_player.name
    question.answer_question()
    if question.correct_answer()
      current_player.add_score()
      puts "Good job #{current_player.name}! You are correct. Your current score is #{@current_player.score} and you have #{@current_player.lives} lives."
    else
      current_player.loose_life()
      puts "Oh no #{current_player.name}! You were wrong! Your current score is #{@current_player.score} and you have #{@current_player.lives} lives."
    end
    change_current_player()
    end
    declare_winner()
  end

end

new_game = Game.new("Ale", "Valeria", 3, 1, 20)

new_game.play_game()