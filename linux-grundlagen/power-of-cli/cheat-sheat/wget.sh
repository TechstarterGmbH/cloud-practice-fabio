 cheat.sheets:wget
# wget
# The non-interactive network downloader

# Quietly download a file, continuing where it left of, if the connection
# fails. The file will be downloaded to the current working directory.
wget -qc [URL]

# Specify a location to download the given file.
wget -qcO [PATH] [URL]

# Download URL using the user agent string provided to the `-U` flag.
wget -U 'Mozilla/5.0' [URL]

 cheat:wget
# To download <url>:
wget <url>
#
# To download multiples files with multiple URLs:
wget <url>...

# To download <url> and change its name:
wget <url> -O <outfile>

# To download <url> into <dir>:
wget -P <dir> <url>

# To continue an aborted downloaded:
wget -c <url>

# To parse a file that contains a list of URLs to fetch each one:
wget -i url_list.txt

# To mirror a whole page locally:
wget -pk <url>

# To mirror a whole site locally:
wget -mk <url>

# To download files according to a pattern:
wget http://example.com/files-{1..15}.tar.bz2

# To download all the files in a directory with a specific extension if directory indexing is enabled:
wget -r -l1 -A.extension http://example.com/directory

# To download only response headers (-S --spider) and display them on stdout (-O -).:
wget -S --spider -O - <url>

# To change the User-Agent to 'User-Agent: toto':
wget -U 'toto' <url>

# To download a file with specific speed EX:500kb/sec:
wget --limit-rate=500k <url>

 tldr:wget
# wget
# Download files from the Web.
# Supports HTTP, HTTPS, and FTP.
# More information: <https://www.gnu.org/software/wget>.

# Download the contents of a URL to a file (named "foo" in this case):
wget https://example.com/foo

# Download the contents of a URL to a file (named "bar" in this case):
wget --output-document bar https://example.com/foo

# Download a single web page and all its resources with 3-second intervals between requests (scripts, stylesheets, images, etc.):
wget --page-requisites --convert-links --wait=3 https://example.com/somepage.html

# Download all listed files within a directory and its sub-directories (does not download embedded page elements):
wget --mirror --no-parent https://example.com/somepath/

# Limit the download speed and the number of connection retries:
wget --limit-rate=300k --tries=100 https://example.com/somepath/

# Download a file from an HTTP server using Basic Auth (also works for FTP):
wget --user=username --password=password https://example.com

# Continue an incomplete download:
wget --continue https://example.com

# Download all URLs stored in a text file to a specific directory:
wget --directory-prefix path/to/directory --input-file URLs.txt

