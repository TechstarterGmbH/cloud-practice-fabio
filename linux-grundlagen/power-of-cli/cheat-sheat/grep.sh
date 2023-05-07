 cheat:grep
# To search a file for a pattern:
grep <pattern> <file>

# To perform a case-insensitive search (with line numbers):
grep -in <pattern> <file>

# To recursively grep for string <pattern> in <dir>:
grep -R <pattern> <dir>

# Read search patterns from a file (one per line):
grep -f <pattern-file> <file>

# Find lines NOT containing pattern:
grep -v <pattern> <file>

# Set how many lines to show before (-B) and after (-A) pattern:
grep -B 3 -A 2 <pattern> <file>

# To grep with regular expressions:
grep "^00" <file>                                               # Match lines starting with 00
grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" <file> # Find IP add

# To find all files that match <pattern> in <dir>
grep -rnw <dir> -e <pattern>

# To exclude grep from your grepped output of ps:
# (Add [] to the first letter. Ex: sshd -> [s]shd)
ps aux | grep '[h]ttpd'

# Colour in red {bash} and keep all other lines
ps aux | grep -E --color 'bash|$'

# tldr:grep
# grep
# Find patterns in files using regular expressions.
# More information: <https://www.gnu.org/software/grep/manual/grep.html>.

# Search for a pattern within a file:
grep "search_pattern" path/to/file

# Search for an exact string (disables regular expressions):
grep --fixed-strings "exact_string" path/to/file

# Search for a pattern in all files recursively in a directory, showing line numbers of matches, ignoring binary files:
grep --recursive --line-number --binary-files=without-match "search_pattern" path/to/directory

# Use extended regular expressions (supports `?`, `+`, `{}`, `()` and `|`), in case-insensitive mode:
grep --extended-regexp --ignore-case "search_pattern" path/to/file

# Print 3 lines of context around, before, or after each match:
grep --context|before-context|after-context=3 "search_pattern" path/to/file

# Print file name and line number for each match with color output:
grep --with-filename --line-number --color=always "search_pattern" path/to/file

# Search for lines matching a pattern, printing only the matched text:
grep --only-matching "search_pattern" path/to/file

# Search `stdin` for lines that do not match a pattern:
cat path/to/file | grep --invert-match "search_pattern"

