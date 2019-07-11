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
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path,face)
end