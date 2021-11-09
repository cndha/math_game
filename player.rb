class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_num(input) #check if input is an integer
    is_num = false #if it's false, continue

    (0..40).each do |i| #checking each viable answer, if typed in as string
      if i.to_s == input 
        is_num = true
      end
    end
    is_num #return input
  end

  def ask_q #in player b/c each player asks the q
    new_q = Question.new
    new_q.q(@name)
    print ">"
    @input = $stdin.gets.chomp

    if !is_num(@input) #if input isnt a number
      puts "That's not even a number! ⚰︎⚰︎⚰︎"
      lose_life
    elsif new_q.correct?(@input.to_i) 
      puts "Congratulations! You can do simple math."
    else 
      puts "No, that's not right hunny" #if number but wrong answer
      lose_life
    end
  end

end
