require 'yaml'
  
def load_library
  database = YAML.load_file('emoticons.yml')
  p database
end

def get_japanese_emoticon(face)
  # code goes here
end

def get_english_meaning(face)
  # code goes here
end

load_library