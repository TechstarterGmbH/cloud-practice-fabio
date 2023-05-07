# tar
# GNU version of the tar archiving utility

# An approach to backing up the current user's HOME, using tar(1) and Gzip
# compression. Permissions (modes) will be preserved. The filename format will
# be: UID:GID_DATE.tgz
#
# Replace 'DEVICE' with whichever device is applicable to you, but note that it
# must be in the '/media/USER' (where USER is the username) directory, else
# this won't work, unless you edit the formatting section of `printf`.
tar -czvpf "$(printf '/media/%s/%s/%d:%d_%(%F)T.tgz' "$USER" 'DEVICE' ${UID:-`id -u`} ${GID:-`id -g`} -1)" "$HOME"

# Delete file 'xdm' from the archive given to the `-f` flag. This only works on
# non-compressed archives, unfortunately, but those can always be uncompressed
# first, then altered with the `--delete` flag, after which you can recompress.
tar --delete -f xdm_edited.tar.gz xdm

# Extract the contents of the given archive (which is not compressed) to the
# destination given to the `-C` flag; not many seem to know of this flag.
#
# If a destination (path given to `-C`) is not provided, the CWD will be used.
tar -C /mnt -xvf Tarball.tar

 cheat:tar
---
tags: [ compression ]
---
# To extract an uncompressed archive:
tar -xvf /path/to/foo.tar

# To extract a .tar in specified directory:
tar -xvf /path/to/foo.tar -C /path/to/destination/

# To create an uncompressed archive:
tar -cvf /path/to/foo.tar /path/to/foo/

# To extract a .tgz or .tar.gz archive:
tar -xzvf /path/to/foo.tgz
tar -xzvf /path/to/foo.tar.gz

# To create a .tgz or .tar.gz archive:
tar -czvf /path/to/foo.tgz /path/to/foo/
tar -czvf /path/to/foo.tar.gz /path/to/foo/

# To list the content of an .tgz or .tar.gz archive:
tar -tzvf /path/to/foo.tgz
tar -tzvf /path/to/foo.tar.gz

# To extract a .tar.bz2 archive:
tar -xjvf /path/to/foo.tar.bz2

# To create a .tar.bz2 archive:
tar -cjvf /path/to/foo.tar.bz2 /path/to/foo/

# To list the content of an .tar.bz2 archive:
tar -tjvf /path/to/foo.tar.bz2

# To create a .tgz archive and exclude all jpg,gif,... from the tgz:
tar -czvf /path/to/foo.tgz --exclude=\*.{jpg,gif,png,wmv,flv,tar.gz,zip} /path/to/foo/

# To use parallel (multi-threaded) implementation of compression algorithms:
tar -z ... -> tar -Ipigz ...
tar -j ... -> tar -Ipbzip2 ...
tar -J ... -> tar -Ipixz ...

# To append a new file to an old tar archive:
tar -rf <archive.tar> <new-file-to-append>

 tldr:tar
# tar
# Archiving utility.
# Often combined with a compression method, such as gzip or bzip2.
# More information: <https://www.gnu.org/software/tar>.

# [c]reate an archive and write it to a [f]ile:
tar cf path/to/target.tar path/to/file1 path/to/file2 ...

# [c]reate a g[z]ipped archive and write it to a [f]ile:
tar czf path/to/target.tar.gz path/to/file1 path/to/file2 ...

# [c]reate a g[z]ipped archive from a directory using relative paths:
tar czf path/to/target.tar.gz --directory=path/to/directory .

# E[x]tract a (compressed) archive [f]ile into the current directory [v]erbosely:
tar xvf path/to/source.tar[.gz|.bz2|.xz]

# E[x]tract a (compressed) archive [f]ile into the target directory:
tar xf path/to/source.tar[.gz|.bz2|.xz] --directory=path/to/directory

# [c]reate a compressed archive and write it to a [f]ile, using [a]rchive suffix to determine the compression program:
tar caf path/to/target.tar.xz path/to/file1 path/to/file2 ...

# Lis[t] the contents of a tar [f]ile [v]erbosely:
tar tvf path/to/source.tar

# E[x]tract files matching a pattern from an archive [f]ile:
tar xf path/to/source.tar --wildcards "*.html"

