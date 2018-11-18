require "pry"

def reformat_languages(languages)
  # your code here
  new_language_hash = {}
  languages.each do |language_type, full_language_hash|
    full_language_hash.each do |language_name, language_hash|
        if new_language_hash[language_name] == nil
          new_language_hash[language_name] = {:type => language_hash[:type]}
          new_language_hash[language_name][:style] = [language_type]
        else
          new_language_hash[language_name][:style] << language_type
          #binding.pry
        end
    end
  end
  new_language_hash
end
