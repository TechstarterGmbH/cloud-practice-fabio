 cheat:zip
# To create zip file:
zip archive.zip file1 directory/

# To create zip file from directory:
zip -r archive.zip directory/

# To create zip file with password:
zip -P password archive.zip file1

# To join a split zip file (.zip, .z01, .z02, etc):
zip -FF splitZipfile.zip --out joined.zip

# To list, test and extract zip archives, see unzip:
cheat unzip

 tldr:zip
# zip
# Package and compress (archive) files into zip file.
# See also: `unzip`.
# More information: <https://manned.org/zip>.

# Add files/directories to a specific archive ([r]ecursively):
zip -r path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 ...

# Remove files/directories from a specific archive ([d]elete):
zip -d path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 ...

# Archive files/directories e[x]cluding specified ones:
zip -r path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 ... -x path/to/excluded_files_or_directories

# Archive files/directories with a specific compression level (`0` - the lowest, `9` - the highest):
zip -r -0-9 path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 ...

# Create an [e]ncrypted archive with a specific password:
zip -r -e path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 ...

# Archive files/directories to a multi-part [s]plit zip file (e.g. 3 GB parts):
zip -r -s 3g path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 ...

# Print a specific archive contents:
zip -sf path/to/compressed.zip

# ---------------------------------------------

 tldr:unzip
# unzip
# Extract files/directories from ZIP archives.
# See also: `zip`.
# More information: <https://manned.org/unzip>.

# Extract all files/directories from specific archives into the current directory:
unzip path/to/archive1.zip path/to/archive2.zip ...

# Extract files/directories from archives to a specific path:
unzip path/to/archive1.zip path/to/archive2.zip ... -d path/to/output

# Extract files/directories from archives to `stdout`:
unzip -c path/to/archive1.zip path/to/archive2.zip ...

# Extract the contents of the file(s) to `stdout` alongside the extracted file names:
unzip -O gbk path/to/archive1.zip path/to/archive2.zip ...

# List the contents of a specific archive without extracting them:
unzip -l path/to/archive.zip

# Extract a specific file from an archive:
unzip -j path/to/archive.zip path/to/file_in_archive1 path/to/file_in_archive2 ...


