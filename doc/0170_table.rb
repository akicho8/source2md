#+hidden: true
require "./setup"

#+title3: Org-mode table style

#+BEGIN_SRC
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
#+END_SRC

# > | Language   | Birth | Creator                                    |
# > |------------|-------|--------------------------------------------|
# > | Lisp       |  1958 | John McCarthy                              |
# > | Fortran    |  1957 | John Backus                                |
# > | COBOL      |  1959 | Grace Hopper and team                      |
# > | Algol      |  1958 | International group of computer scientists |
# > | BASIC      |  1964 | John G. Kemeny and Thomas E. Kurtz         |
# > | Pascal     |  1970 | Niklaus Wirth                              |
# > | C          |  1972 | Dennis Ritchie                             |
# > | Prolog     |  1972 | Alain Colmerauer, Robert Kowalski          |
# > | C++        |  1983 | Bjarne Stroustrup                          |
# > | Python     |  1989 | Guido van Rossum                           |
