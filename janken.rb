  puts = "数字を入力して下さい"
def yakyuuken
  puts "[0]:グー\n [1]:チョキ\n [2]:パー"
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
  puts "相手の手は:#{jankens[program_hand]}です"
  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif (player_hand == 0 && program_hand == 1) ||
        (player_hand == 1 && program_hand == 2) ||
        (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
  else
    puts "あなたの負けです"
    return false
  end
end
 next_game = true
while next_game do
  next_game = yakyuuken
end
