# Source2MD: Markdown generator from source code #

## Install ##

```
$ gem i source2md
```

## CLI ##

```
$ source2md generate -o README.md README.rb
```

## Rules ##

### Embedding Of Small Code ###

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  hello = -> {
    "Hello, world!"
  }

  hello.call
EOS
```

> ```ruby
> hello = -> {
>   "Hello, world!"
> }
> ```

> ```ruby
> hello.call
> ```

### Source Block ###

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  #+BEGIN_SRC
  hello = -> {
    "Hello, world!"
  }

  hello.call
  #+END_SRC
EOS
```

> ```ruby
> hello = -> {
>   "Hello, world!"
> }
>
> hello.call
> ```

### Title ###

No number limit.

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  #+title1: Title Level 1

  #+title2: Title Level 2

  #+title3: Title Level 3
EOS
```

> # Title Level 1 # #
>
> ## Title Level 2 # ##
>
> ### Title Level 3 # ###

### Markdown Style Title ###

The condition is that there are the same number of sharps on the back.

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  # Title Level 1 #

  ## Title Level 2 ##

  ### Title Level 3 ###
EOS
```

> # Title Level 1 #
>
> ## Title Level 2 ##
>
> ### Title Level 3 ###

### Org-mode Table Style ###

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  # |------------+-------+--------------------------------------------|
  # | Language   | Birth | Creator                                    |
  # |------------+-------+--------------------------------------------|
  # | Lisp       |  1958 | John McCarthy                              |
  # | Fortran    |  1957 | John Backus                                |
  # | COBOL      |  1959 | Grace Hopper and team                      |
  # | Algol      |  1958 | International group of computer scientists |
  # | BASIC      |  1964 | John G. Kemeny and Thomas E. Kurtz         |
  # | Pascal     |  1970 | Niklaus Wirth                              |
  # | C          |  1972 | Dennis Ritchie                             |
  # | Prolog     |  1972 | Alain Colmerauer, Robert Kowalski          |
  # | C++        |  1983 | Bjarne Stroustrup                          |
  # | Python     |  1989 | Guido van Rossum                           |
  # |------------+-------+--------------------------------------------|
EOS
```

> | Language   | Birth | Creator                                    |
> |------------|-------|--------------------------------------------|
> | Lisp       |  1958 | John McCarthy                              |
> | Fortran    |  1957 | John Backus                                |
> | COBOL      |  1959 | Grace Hopper and team                      |
> | Algol      |  1958 | International group of computer scientists |
> | BASIC      |  1964 | John G. Kemeny and Thomas E. Kurtz         |
> | Pascal     |  1970 | Niklaus Wirth                              |
> | C          |  1972 | Dennis Ritchie                             |
> | Prolog     |  1972 | Alain Colmerauer, Robert Kowalski          |
> | C++        |  1983 | Bjarne Stroustrup                          |
> | Python     |  1989 | Guido van Rossum                           |

### Explain the method simply ###

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  #+name: String#size
  #+desc: Return the number of characters
  #+comment: Comments about size
  "abc".size     # => 3

  #+name: String#reverse
  #+desc: reverse the sequence of characters
  #+comment: Comments about reverse
  "abc".reverse  # => "cba"
EOS
```

> ### String#size ###
>
> Return the number of characters
>
> ```ruby
> "abc".size  # => 3
> ```
>
> Comments about size
>
> ### String#reverse ###
>
> reverse the sequence of characters
>
> ```ruby
> "abc".reverse  # => "cba"
> ```
>
> Comments about reverse

### Warning, Alert Message ###

Exclusive to Zenn

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  #+warn: this is warning message

  #+alert: this is alert message
EOS
```

> ```
> :::message
> this is warning message
> :::
> ```
>
> ```
> :::message alert
> this is alert message
> :::
> ```

### Text ###

If no rule applies and the text begins with `#`, remove the `#`.

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  # Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  # Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
EOS
```

> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

### Raw Text ###

Same rule as when writing text, simply remove the leading `#`.

```ruby
puts Source2MD::Section.new(<<~EOS).to_md
  # <hr>
  #
  # <hr>
EOS
```

> ```
> <hr>
>
> <hr>
> ```
