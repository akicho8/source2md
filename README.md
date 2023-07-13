# Source2MD: Markdown generator from source code

input.rb:

```ruby
# title2: (title)

# name: (name1)
# desc: (desc1)
# comment: (comment1)
"foo1".size                          # => 4

# name: (name2)
# desc: (desc2)
# comment: (comment2)
"foo2".size                          # => 4

# |---+---+---|
# | x | x | x |
# |---+---+---|
# | x | x | x |
# | x | x | x |
# |---+---+---|
```

↓

```shell
$ source2md generate -o output.md input.rb
read: input.rb
write: output.md
```

↓

## (title)

### (name1)

(desc1)

```ruby
"foo1".size  # => 4
```

(comment1)

### (name2)

(desc2)

```ruby
"foo2".size  # => 4
```

(comment2)

| x | x | x |
|---|---|---|
| x | x | x |
| x | x | x |
