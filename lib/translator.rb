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

# {
# "get_emoticon" => {
#   "%)"=>"(゜.゜)",
#   "8D"=>"(^0_0^)",
#   ":$"=>"(#^.^#)",
#   ":'("=>"(Ｔ▽Ｔ)",
#   ":)"=>"(＾ｖ＾)",
#   ":*"=>"(*^3^)/~☆",
#   ":O"=>"(ΘεΘ;)",
#   ":o"=>"o_O",
#   ";)"=>"(^_-)",
#   "=D"=>"(￣ー￣)",
#   ">:("=>"ヽ(ｏ`皿′ｏ)ﾉ",
#   "><>"=>">゜))))彡",
#   "O:)"=>"☜(⌒▽⌒)☞"},
#
#   "get_meaning" => {
#     "(#^.^#)"=>"embarrased",
#     "(*^3^)/~☆"=>"kiss",
#     "(^0_0^)"=>"glasses",
#     "(^_-)"=>"wink",
#     "(ΘεΘ;)"=>"bored",
#     "(゜.゜)"=>"confused",
#     "(Ｔ▽Ｔ)"=>"sad",
#     "(＾ｖ＾)"=>"happy",
#     "(￣ー￣)"=>"grinning",
#     ">゜))))彡"=>"fish",
#     "o_O"=>"surprised",
#     "☜(⌒▽⌒)☞"=>"angel",
#     "ヽ(ｏ`皿′ｏ)ﾉ"=>"angry"}
#   }

def get_japanese_emoticon(file_path, en_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].include?(en_emoticon)
    library["get_emoticon"][en_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
