class InfiniteLoop
  def initialize
    @secret_code = rand(1..100)
    @attempts = 0
    puts "🔥 Welcome to INFINITE LOOP! 🔥"
    puts "Can you guess the secret code (1-100) to break free?"
  end
    def play
    loop do
      print "Your guess: "
      guess = gets.chomp.to_i
      @attempts += 1

      if guess == @secret_code
        puts "🎉 You escaped the loop in #{@attempts} attempts! 🎉"
        break
      elsif guess < @secret_code
        puts "⬆️ Higher! The loop continues..."
      else
        puts "⬇️ Lower! The loop continues..."
      end
    end
  end
end
game = InfiniteLoop.new
game.play
