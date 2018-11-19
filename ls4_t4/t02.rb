dictionary = []
f = File.new("./libs/noun_dictionary.txt")
while line = f.gets
  dictionary.push(line.to_s)
end
f.close
player_balans = 0
flag_finde_word = false
print "До скольки очков играем? : "
count = gets.to_i
pc_word = dictionary[rand(dictionary.length)].downcase
puts "Слово компьютера: " + pc_word.to_s
player_word = ''
while (player_balans < count && player_balans > -1*count)
  while (!flag_finde_word && player_balans > -1*count)
    print "Ваше слово: "
    player_word = gets.to_s
    flag_finde_word = false
    for word in dictionary
      if (word == player_word and player_word[0] == pc_word[pc_word.length - 2])
        puts "Ok"
        player_balans +=1
        "Ваш баланс: " + player_balans.to_s
        flag_finde_word = true
        break
      end
    end
    if !flag_finde_word
      player_balans -=1
      puts "Ваше слово не найдено в словаре или не соответствует требованиям игры!"
      puts "Ваш баланс: " + player_balans.to_s
    end
  end
    pc_word = dictionary[rand(dictionary.length)].downcase
  if player_word[pc_word.length - 2] == pc_word[0]
      flag_finde_word = false
      player_word = ''
      puts "Слово компьютера: " + pc_word.to_s
      puts "Ваш баланс: " + player_balans.to_s
  end
end

if player_balans == count
    puts 'ТЫ ПОБЕДИЛ!!!'
else
    puts "ТЫ ПРОИГРАЛ((("
end
