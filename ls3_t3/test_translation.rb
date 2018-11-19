require "google/cloud/translate"

# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "./libs/My Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file

# The text to translate
text = "Ambigous"
# The target language
target = "ru"

# Translates some text into Russian
translation = translate.translate text, to: target

puts "Text: #{text}"
puts "Translation: #{translation}"