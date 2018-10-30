require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_data|
    language_data.each do |language, type_data|
      if new_hash[language]
        new_hash[language][:style] << style
      else 
      new_hash[language] = {:type => type_data[:type]}
      new_hash[language][:style] = [style]
      end
    end
  end 
      
  new_hash
end