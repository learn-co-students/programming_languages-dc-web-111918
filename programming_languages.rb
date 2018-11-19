require 'pry'
def reformat_languages(languages)
  reformatted = {}
  languages.each do |type, hash1|
    hash1.each do |name, hash2|
      if !reformatted[name]
        reformatted[name] = {:type => hash2[:type]}
        reformatted[name][:style] = [type]
      else
        reformatted[name][:style] << type
      end
    end
  end
  return reformatted
end
