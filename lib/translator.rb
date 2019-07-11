require 'yaml'
  
def load_library(path)
  data = YAML.load_file(path)
  database = {'get_meaning' => {}, 'get_emoticon' +> {}}
  
  return database
end

def get_japanese_emoticon(path,face)
  database = load_library(path)
  database.each_key do |key|
    if database[key][0] == face
      return database[key][1]
    end
  end
end

def get_english_meaning(path,face)
  database = load_library(path)
  database.each_key do |key|
    if database[key][1] == face
      return key
    end
  end
end