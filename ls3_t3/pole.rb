def printWord(sicretWord,answers)
  i = 0
  res = ""
  while i<sicretWord.length 
    j=0
    while j<answers.length
      if sicretWord[i] == answers[j]
        res += answers[j]
        break
      end
      j+=1
      if j == answers.length
        res += "*"
      end
    end
    i+=1
  end
  return res
end

require "google/cloud/translate"
# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "./libs/My Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file
target = "ru"

#------------------------------------------------------------------------------------

dictionary = []
f = File.new("./libs/noun_dictionary.txt")
while line = f.gets
  dictionary.push(line)
end
f.close
sicretWord = dictionary[rand(dictionary.length)].downcase
translation = translate.translate sicretWord, to: target
answers = ""
puts translation
puts "-----------"
puts "*"*sicretWord.length
#puts sicretWord
word = printWord(sicretWord,"*")
l=0
while word.include? "*"
  print "Угадайте букву: "
  simble = ((gets.to_s).to_s).downcase
    if sicretWord.include?   (simble[0])
      answers += simble
      word = printWord(sicretWord,answers)
      puts word
    else
      break
      puts "Не угадал!"
    end
    l+=1
end
if !word.include? "*"
  puts "Слово угадано!"
else
  puts "Проиграл!"
end