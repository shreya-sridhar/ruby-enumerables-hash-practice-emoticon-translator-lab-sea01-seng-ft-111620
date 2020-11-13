# require modules here
require "yaml"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticon_hash = {}
  emoticons.each do |emotions, symbols|
    emoticon_hash[:emotions] = { :english => symbols[0] , :japanese => symbols[1] }
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