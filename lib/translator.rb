# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)
  library= YAML.load_file(file_path) # yaml file 
  translator = {"get_meaning" => {}, "get_emoticon" => {}} # empty hash
  library.each do |meaning, emoticons| # go through yaml to get meanings and emotes
    translator["get_meaning"][emoticons[1]] = meaning
    translator["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
