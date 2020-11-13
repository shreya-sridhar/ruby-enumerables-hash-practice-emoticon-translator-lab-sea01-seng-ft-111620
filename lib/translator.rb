# require modules here
require "yaml"

def load_library(path)
  # code goes here
  emoticon_array = YAML.load_path(path)
  emoticon_array.each_with_object({}) do |(key,value), final_hash|
    final_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  final_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end