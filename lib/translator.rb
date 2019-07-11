require 'yaml'
  
def load_library(path)
  data = YAML.load_file(path)
  database = {'get_meaning' => {}, 'get_emoticon' => {}}
  
  data.each_key do |key|
    database['get_meaning'][data[key][1]] = "#{key}"
    database['get_emoticon'][data[key][0]] = data[key][1]
  end
  return database
end

def get_japanese_emoticon(path,face)
  database = load_library(path)
  if database['get_emoticon'][face] != NIL
    return database['get_emoticon'][face]
  end
  return 
end

def get_english_meaning(path,face)
  database = load_library(path)
  database.each_key do |key|
    if database[key][1] == face
      return key
    end
  end
end