 cheat.sheets:awk
# awk
# Pattern scanning and processing language

# Sum integers from a file or STDIN, one integer per line.
printf '1\n2\n3\n' | awk '{sum += $1} END {print sum}'

# Using specific character as separator to sum integers from a file or STDIN.
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# Print line number 12 of file.txt
awk 'NR==12' file.txt

# Print first field for each record in file.txt
awk '{print $1}' file.txt

Print only lines that match regex in file.txt
awk '/regex/' file.txt

# Print only lines that do not match regex in file.txt
awk '!/regex/' file.txt

# Print any line where field 2 is equal to "foo" in file.txt
awk '$2 == "foo"' file.txt

# Print lines where field 2 is NOT equal to "foo" in file.txt
awk '$2 != "foo"' file.txt

# Print line if field 1 matches regex in file.txt
awk '$1 ~ /regex/' file.txt

# Print line if field 1 does NOT match regex in file.txt
awk '$1 !~ /regex/' file.txt

# Print lines with more than 80 characters in file.txt
awk 'length > 80' file.txt

# Print a multiplication table.
awk -v RS='' '
    {
        for(i=1;i<=NF;i++){
            printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")
        }
    }
' <<< "$(seq 9 | sed 'H;g')"

# Specify output separator character.
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'

# Search paragraph for the given REGEX match.
# Paragraphs will be collapsed together.
awk -v RS='' '/42B/' file

# Search paragraph for the given REGEX match.
# Paragraphs will be separated with a new line.
awk -v RS= ORS='\n\n' '/42B/' file

# Display only first field in text taken from STDIN.
echo 'Field_1  Field_2  Field_3' | awk '{print $1}'
# Note that in this case, you're far better off using cut(1).

# Use AWK solo; without the need for something via STDIN.
awk 'BEGIN {print("Example text.")}'

# Access environment variables from within AWK.
awk 'BEGIN {print ENVIRON["LS_COLORS"]}'

# Count number of lines taken from STDIN.
free | awk '{L++} END {print(L)}'
# Cleaner, more efficient approach to the above.
free | awk 'END {print(NR)}'

# Output unique list of available sections under which to create a DEB package.
awk '!A[$1]++ {print($1)}' <<< "$(dpkg-query --show -f='${Section}\n')"

# Using process substitution (`<()` is NOT command substitution), with AWK and
# its associative array variables, we can print just column 2 for lines whose
# first column is equal to what's between the double-quotes.
awk '{NR != 1 && A[$1]=$2} END {print(A["Mem:"])}' <(free -h)
# While below is an easier and simpler solution to the above, it's not at all
# the same, and in other cases, the above is definitely preferable.
awk '/^Mem:/ {print($2)}' <(free -h)

# Output list of unique uppercase-only, sigil-omitted variables used in FILE.
awk '
    {
        for(F=0; F<NF; F++){
            if($F~/^\$[A-Z_]+$/){
                A[$F]++
            }
        }
    }
    END {
        for(I in A){
            X=substr(I, 2, length(I))
            printf("%s\n", X)
        }
    }
' FILE

# Output only lines from FILE between PATTERN_1 and PATTERN_2. Good for logs.
awk '/PATTERN_1/,/PATTERN_2/ {print}' FILE

# Pretty-print a table of an overview of the non-system users on the system.
awk -F ':' '
    BEGIN {
        printf("%-17s %-4s %-4s %-s\n", "NAME", "UID", "GID", "SHELL")
    }
    $3 >= 1000 && $1 != "nobody" {
        printf("%-17s %-d %-d %-s\n", $1, $3, $4, $7)
    }
' /etc/passwd

# Display the total amount of MiB of RAM available in the machine. This is also
# a painful but useful workaround to get the units comma-separated, as would be
# doable with Bash's own `printf` built-in.
awk '/^MemTotal:/ {printf("%'"'"'dMiB\n", $2 / 1024)}'

# It's possible to sort strings in AWK, as well as uniq-ing, meaning you can
# replace uniq(1) and sort(1) calls with just the one call of AWK. Granted, you
# can use `sort -u` to do both, but AWK offers much more functionality.
#
# Unlike when using AWK to uniq-ify, uniq(1) only works by adjacency, meaning
# the duplicate lines must be adjacent to one another for them to be handled.
awk '
        {
                !Lines[$0]++
        }
        END {
                asorti(Lines, Sorted)
                for (Line in Sorted) {
                        print(Sorted[Line])
                }
        }
' FILE

# Remove duplicate lines
awk '!seen[$0]++' file.txt

# Remove all empty lines
awk 'NF > 0' file.txt

 cheat:awk
# To sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# To use a specific character as separator to sum integers from a file or stdin:
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# To print a multiplication table:
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# To specify an output separator character:
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'

# To execute commands only on rows that satisfy a certain condtion
printf "george jetson\nolive oyl\nbeetle bailey" | awk '$2=="bailey"{print $0}'
#
# To execute commands only on matching rows using regex
printf "george jetson\nolive oyl\nbeetle bailey" | awk '/ley$/{print $0}'

 tldr:awk
# awk
# A versatile programming language for working on files.
# More information: <https://github.com/onetrueawk/awk>.

# Print the fifth column (a.k.a. field) in a space-separated file:
awk '{print $5}' path/to/file

# Print the second column of the lines containing "foo" in a space-separated file:
awk '/foo/ {print $2}' path/to/file

# Print the last column of each line in a file, using a comma (instead of space) as a field separator:
awk -F ',' '{print $NF}' path/to/file

# Sum the values in the first column of a file and print the total:
awk '{s+=$1} END {print s}' path/to/file

# Print every third line starting from the first line:
awk 'NR%3==1' path/to/file

# Print different values based on conditions:
awk '{if ($1 == "foo") print "Exact match foo"; else if ($1 ~ "bar") print "Partial match bar"; else print "Baz"}' path/to/file

# Print all lines where the 10th column value equals the specified value:
awk '($10 == value)'

# Print all the lines which the 10th column value is between a min and a max:
awk '($10 >= min_value && $10 <= max_value)'

