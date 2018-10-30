require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, language_data|
    language_data.each do |language, type_data|
      if new_hash[language]                 #if new_hash[language] exists, we
        new_hash[language][:style] << style #would assumethat it has both :type
      else                                    #and :style. So we don't want to
      new_hash[language] = {:type => type_data[:type]}      #reset, but just
      new_hash[language][:style] = [style]                  #add second style
      end
    end
  end 
      
  new_hash
end