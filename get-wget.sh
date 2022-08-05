#!/bin/sh

# BUG: links to ftp server are broken despite being correctly downloaded
pushd srv-wget
wget                     \
  --mirror               \
  --convert-links        \
  --adjust-extension     \
  --page-requisites      \
  --no-parent            \
  --no-if-modified-since \
  --follow-ftp           \
  --backup-converted     \
  -D "mit.edu" \
  -H \
  https://groups.csail.mit.edu/mac/classes/6.001/ST98/psets/
popd
