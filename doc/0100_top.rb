#+hidden: true
require "./setup"

# Source2MD: Markdown generator from source code #

## Basic Logic ##

# 1. Divide the source code into paragraphs using blank lines as separations.
# 1. Remove comments from the comment blocks.
# 1. Include the code within the code block.

## Install ##

# ```
# $ gem i source2md
# ```

## CLI ##

# ```
# $ source2md generate -o README.md README.rb
# ```

## Rules ##
