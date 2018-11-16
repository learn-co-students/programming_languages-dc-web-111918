require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
    value.each do |k, v|
      new_hash[k] ||= v
      new_hash[k][:style] ||= []
          new_hash[k][:style] << key
    end #val each
  end #lang each
  return new_hash
end #method
