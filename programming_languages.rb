def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style,language_hash|
    language_hash.each do |language,type|
      new_hash[language] = {
        :type => type[:type]
      }
      if new_hash[language][:style]
          new_hash[language][:style] = [style]
      else
          new_hash[language][:style] << style
      end
    end
  end
  return new_hash
end
