def reformat_languages(languages)
  new_hash = {}
languages.each do |style, langs|
  langs.each do |lang, type|
  new_hash[lang] = type
  new_hash[lang][:style] = []
end
end
  new_hash.each do |lang, info|
    languages.each do |style, langs|
      if langs.key?(lang)
        new_hash[lang][:style].push(style)
      end
    end
  end

new_hash
end
