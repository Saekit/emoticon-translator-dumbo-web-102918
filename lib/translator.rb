# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)
  library= YAML.load_file(file_path) # yaml file
  translator = {"get_meaning" => {}, "get_emoticon" => {}} # empty hash
   # go through yaml to get meanings and emotes
  library.each do |meaning, emoticons|
    #JP emotes inside get_meaning and keys inside get_meaning points to their meanings
    translator["get_meaning"][emoticons[1]] = meaning
    #EN emotes inside get_emoticon and keys inside get_emoticon points to their JP equivalents
    translator["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  translator
end

def get_japanese_emoticon(file_path, emoticon)

end

def get_english_meaning
  # code goes here
end
