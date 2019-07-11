require 'yaml'
  
def load_library(path)
  database = YAML.load_file(path)
  return database
end

def get_japanese_emoticon(face)
  database = load_library
  database.each_key do |key|
    if database[key][0] == face
      return database[key][1]
    end
  end
end

def get_english_meaning(face)
  database = load_library
  database.each_key do |key|
    if database[key][1] == face
      return key
    end
  end
end

data = load_library('lib/translator.rb')
foo = get_japanese_emoticon("O:)")
p foo
p get_english_meaning(foo)