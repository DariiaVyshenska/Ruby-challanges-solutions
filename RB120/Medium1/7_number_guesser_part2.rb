class GuessingGame
  # GUESS_LIMIT = 7

  def initialize(min_lim, max_lim)
    @numbers_range = (min_lim..max_lim).to_a
    @guess_limit = set_guess_limit
    clear_screen
    @the_number = nil
    @current_guess = nil
  end

  def play
    set_the_number
    (1..guess_limit).to_a.reverse_each do |guess_count|
      puts "You have #{guess_count} guesses remaining."
      set_current_guess
      eval_current_guess
      break if won?
    end

    display_end_message
    puts "The number was #{the_number}"
  end

  private

  attr_reader :current_guess, :the_number, :numbers_range, :guess_limit

  def clear_screen
    system 'clear'
  end

  def set_guess_limit
    Math.log2(numbers_range.size).to_i + 1
  end

  def display_end_message
    puts
    msg = won? ? 'You won!' : 'You have no more guesses. You lost!'
    puts msg
  end

  def eval_current_guess
    msg = case current_guess
          when the_number then "That's the number!"
          when numbers_range.first...the_number then 'Your guess is too low.'
          when the_number..numbers_range.last then 'Your guess is too high.'
          end
    puts msg
    puts
  end

  def won?
    current_guess == the_number
  end

  def set_current_guess
    answer = nil
    loop do
      print "Enter a number between #{numbers_range.first} and #{numbers_range.last}: "
      answer = gets.chomp
      break if valid_user_guess?(answer)

      print 'Invalid guess. '
    end
    @current_guess = answer.to_i
  end

  def valid_user_guess?(answer)
    answer.to_i.to_s == answer && numbers_range.include?(answer.to_i)
  end

  def set_the_number
    @the_number = numbers_range.sample
  end
end

game = GuessingGame.new(501, 1500)
game.play
puts
game.play
