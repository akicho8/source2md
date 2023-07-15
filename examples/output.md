```ruby
# ```yaml:config.yml
#   frequencies: frequencies1.rb
# ```
```

```ruby:frequencies1.rb
def frequencies(words)
  words.tally.sort_by { -_2 }.take(25)
end
```
