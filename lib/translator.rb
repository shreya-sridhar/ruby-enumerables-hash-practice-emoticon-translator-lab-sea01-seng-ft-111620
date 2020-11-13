# require modules here
require "yaml"

def load_library
  # code goes here
  emoticon_array = YAML.load_library("./lib/emoticons.yml")
  emoticon_array.each_with_object({}) do |(key,value), final_hash|
    final_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  emoticon_array
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end