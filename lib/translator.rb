# require modules here
require "yaml"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticons.each_with_object({}) do |(key,value), final_hash|
    final_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  emoticon_hash
end

def get_japanese_emoticon
  # code goes here
    emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning
  # code goes here
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end