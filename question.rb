class Math_question
  attr_reader :answer
  def initialize(lower_limit, upper_limit)
    @num1 = rand(lower_limit..upper_limit)
    @num2 = rand(lower_limit..upper_limit)
    @answer = @num1 + @num2
    #@user_answer = gets.chomp
  end

  def generate_question
    "what is the result of #{@num1} + #{@num2}?" 
  end

  def answer_question
    puts self.generate_question()
    @user_answer = gets.chomp
  end

  def correct_answer
    if @user_answer.to_i == @answer
      true
    else
      false
    end
  end

end
