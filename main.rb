require_relative "lib/tic_tac_toe_game.rb"

while true do
    tic_tac_toe_game
    puts "Do you want to play again?[y/n]"
    answer = gets.chomp
    if answer.downcase == "n"
        puts "Thank you for playing! \u{1f603}"
        puts "See you soon!"
        break
    end
end
