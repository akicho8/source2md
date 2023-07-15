# ```yaml:config.yml
#+plugins:
#   extract_words: extract_words1.rb
#   frequencies: frequencies1.rb
# ```

# ```ruby:frequencies1.rb
# def frequencies(words)
#   words.tally.sort_by { -_2 }.take(25)
# end
# ```
