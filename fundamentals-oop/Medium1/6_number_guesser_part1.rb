class GuessingGame
  NUMBERS_RANGE = (1..100).to_a
  GUESS_LIMIT = 7

  def initialize
    clear_screen
    @the_number = nil
    @current_guess = nil
  end

  def play
    set_the_number
    (1..GUESS_LIMIT).to_a.reverse_each do |guess_count|
      puts "You have #{guess_count} guesses remaining."
      set_current_guess
      eval_current_guess
      break if won?
    end

    display_end_message
    puts "The number was #{the_number}"
  end

  private

  attr_reader :current_guess, :the_number

  def clear_screen
    system 'clear'
  end

  def display_end_message
    puts
    msg = won? ? 'You won!' : 'You have no more guesses. You lost!'
    puts msg
  end

  def eval_current_guess
    msg = case current_guess
          when the_number then "That's the number!"
          when NUMBERS_RANGE.first...the_number then 'Your guess is too low.'
          when the_number..NUMBERS_RANGE.last then 'Your guess is too high.'
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
      print "Enter a number between #{NUMBERS_RANGE.first} and #{NUMBERS_RANGE.last}: "
      answer = gets.chomp
      break if valid_user_guess?(answer)

      print 'Invalid guess. '
    end
    @current_guess = answer.to_i
  end

  def valid_user_guess?(answer)
    answer.to_i.to_s == answer && NUMBERS_RANGE.include?(answer.to_i)
  end

  def set_the_number
    @the_number = NUMBERS_RANGE.sample
  end
end

game = GuessingGame.new
game.play
puts
game.play
