#+hidden: true
require "./setup"

#+title1: Source2MD: Markdown generator from source code

#+title2: Logic

# 1. Divide the source code into paragraphs using blank lines as separations.
# 1. Remove comments from the comment blocks.
# 1. Include the code within the code block.

#+title2: Install

# ```
# $ gem i source2md
# ```

#+title2: CLI

# ```
# $ source2md generate -o README.md README.rb
# ```

#+title2: Rules
