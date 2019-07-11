require 'yaml'
  
def load_library
  database = YAML.load_file('emoticons.yml')
  return database
end

def get_japanese_emoticon(face)
  database = load_library
  database.each do |obj|
    p obj
  end
end

def get_english_meaning(face)
  # code goes here
end

data = load_library
get_japanese_emoticon("O:)",data)