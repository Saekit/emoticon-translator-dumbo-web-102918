# require modules here
require 'yaml'
emotes = YAML.load_file('lib/emoticons.yml')
# emotes = hash of emoticons

def load_library(emotes)
  emo_hash = emo_hash.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
  emo_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
