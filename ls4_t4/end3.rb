dictionary = []
f = File.new("./libs/noun_dictionary.txt")
while line = f.gets
  dictionary.push(line.to_s)
end
f.close
cnt_of_uniq_words = 0;

puts "Повторяющихся эл-тов: #{dictionary.size - dictionary.uniq.size}"
puts "Уникальных эл-тов: #{dictionary.size - (dictionary.size - dictionary.uniq.size)}"
        
            