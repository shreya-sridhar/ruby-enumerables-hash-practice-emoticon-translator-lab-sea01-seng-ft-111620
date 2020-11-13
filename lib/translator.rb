require "yaml"
require "pry"

def load_library(path)
  emoji_hash = {}
  emoji = YAML.load_file(path)
  emoji.each do |word, emojis|
    emoji_hash[word] = {:english => emojis[0] , :japanese => emojis[1] }
  end
  emoji_hash
end

def get_japanese_emoticon(path, emoticon)
  k=""
  emoji_hash = load_library(path)
  emoji_hash.each do |(key,value)|
    if emoticon == value[:english]
      k=value[:japanese]
    end
  end
  if k !=""
    return k
  else
    sorry_message = "Sorry, that emoticon was not found"
    return sorry_message
  end
end

def get_english_meaning(path, emoticon)
  k = ""
  emoji_hash = load_library(path)
  emoji_hash.each do |(key,value)|
    if emoticon == value[:japanese]
      k = key 
    end
  end
  if k !=""
    return k
  else
    sorry_message = "Sorry, that emoticon was not found"
    return sorry_message
  end  
end