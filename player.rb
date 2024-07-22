class Player
  attr_reader :name
  attr_reader :score
  attr_reader :lives
  
  def initialize (name, lives)
    @name = name
    @lives = lives
    @score = 0
  end

  def add_score
    @score += 1
  end

  def loose_life
    @lives -= 1
  end
end


